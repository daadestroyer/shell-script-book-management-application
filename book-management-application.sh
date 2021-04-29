#! /bin/bash
declare -a BOOKS
i=0
echo
add_book()
{
  read -p "Enter name of the book to add : " NEW_BOOK_NAME
  BOOKS[$i]=$NEW_BOOK_NAME
  let i++
  echo "New Book $NEW_BOOK_NAME Added Sucessfully..."
  echo "-------------------------------------------------"
  echo "All Available Books Are : ${BOOKS[@]}"
  echo "-------------------------------------------------"
}
delete_book()
{
  read -p "Enter name of the book to delete : " BOOK_TO_DELETE
  AVAILABLITY="no"
  for index in ${!BOOKS[@]} # this will provide available index
  do
     if [ ${BOOKS[$index]} = $BOOK_TO_DELETE ]; then
         AVAILABLITY="yes"
         unset BOOKS[$index]
         echo "$BOOK_TO_DELETE deleted successfully..."
         echo "-------------------------------------------------"
         echo "All Available Books Are : ${BOOKS[@]}"
         echo "-------------------------------------------------"
         break   
      fi
  done
  if [ $AVAILABLITY = "no" ]; then
        echo "$BOOK_TO_DELETE is not available..."
  fi
}


echo "RVCE Book Management Application"
echo "*********************************"

while [ true ]
do
    read -p "Which Operation You Want To Perform[add|delete|list|exit] :" OPTION
    case $OPTION in
        add)
            add_book
            ;;
        delete)
            delete_book
            
    esac
done  