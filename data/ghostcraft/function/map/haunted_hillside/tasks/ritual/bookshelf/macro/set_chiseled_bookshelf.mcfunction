#
#   Set Chiseled Bookshelf
#   
#   Purpose: To set this bookshelf with filled values
#
#   Input: {facing: string, book1: string, book2: string, book3: string, book4: string, book5: string, book6: string}
#


$setblock ~ ~ ~ chiseled_bookshelf[facing=$(facing),slot_0_occupied=$(book1),slot_1_occupied=$(book2),slot_2_occupied=$(book3),slot_3_occupied=$(book4),slot_4_occupied=$(book5),slot_5_occupied=$(book6)]

