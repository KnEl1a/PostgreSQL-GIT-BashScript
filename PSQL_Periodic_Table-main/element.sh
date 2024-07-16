#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --tuples-only -c"

if [[ -z $1 ]]
then
  echo -e "Please provide an element as an argument."
  exit
fi

#pa
#si el argumento es un "atomic number"
if [[ $1 =~ ^[1-9]+$ ]]
then
  elementos=$($PSQL "SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements JOIN properties using(atomic_number) JOIN types using(type_id) WHERE atomic_number = '$1'")
else
#si el argumento es una cadena de caracteres ...
  elementos=$($PSQL "SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements JOIN properties using(atomic_number) JOIN types using(type_id) WHERE name = '$1' or symbol = '$1'")
fi

#elemento que no se encuentre ...
if [[ -z $elementos ]]
then
  echo -e "I could not find that element in the database."
  exit
fi

echo $elementos | while IFS=" |" read Atm name symbol type Mas Map Bpt 
do
  echo -e "The element with atomic number $Atm is $name ($symbol). It's a $type, with a mass of $Mas amu. $name has a melting point of $Map celsius and a boiling point of $Bpt celsius."
done