#! /bin/bash
declare -a BOOKS
echo
add_book()
{
  read -p "Enter name of the book to add : " NEW_BOOK_NAME
  len=${#BOOKS[@]}
  BOOKS[$len]=$NEW_BOOK_NAME
  echo "New Book $NEW_BOOK_NAME Added Sucessfully..."
  echo "-------------------------------------------------"
  echo "All Available Books Are : ${BOOKS[@]}"
  echo "-------------------------------------------------"
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