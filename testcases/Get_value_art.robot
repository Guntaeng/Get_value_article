*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    Collections
Library    String
Library    Process
Library    custom_keywords.py    
Resource    ../keywords/common_art.robot
Test Setup    Login dohome and click web art(Create)   
Test Template    Get value article
Library    DataDriver    file=../resources/art_id.csv  dialect=excel    encoding=utf-8
Library    XML
Test Teardown    Close All Browsers


*** Variables ***
${value_art}    C:/Automate/Web/Get_value_art/resources/get_value_art.csv
${not_value}    -

*** Test Cases ***
Create clone art

*** Keywords ***
Get value article 
    [Arguments]    ${id}
    Wait And Click Element    //p[text()='จัดการสินค้า']
    Wait And Click Element    //p[text()='รายการสินค้าสร้างสำเร็จ (MM43)']
    Wait And Wait Until Element Is Visible    //*[@data-dx_placeholder='123456789']/preceding-sibling::input
    Wait And Click Element    //*[@data-dx_placeholder='123456789']/preceding-sibling::input
    Wait And Input Text with Delay    //*[@data-dx_placeholder='123456789']/preceding-sibling::input    ${id}
    Wait And Click Element    //span[text()='ค้นหา']
    Wait And Wait Until Element Is Visible    //span[text()='1. รายละเอียดเกี่ยวกับตัวสินค้า']

    #ข้อมูลส่วนหัว
    ${article_no}    Get Value    //*[text()='รหัสสินค้า (Article Number)']/ancestor::label/following-sibling::*[1]//input
    ${vendor_no}     Get Value    //input[@name='vendor_no']
    ${name_th}    Get Value    //input[@name='name_th']
    ${name_en}    Get Value    //input[@name='name_en']
    
    #TAP : Basic DATA
    #Section 1
    ${article_category}    Get Value    //input[@name='article_category']
    ${merc_category_MC2}    Get Value    //input[@name='merchandise_category2']
    ${merc_category_MC5}    Get Value       //input[@name='merchandise_category']
    ${division_type}    Get Value       //input[@name='division']
    ${artl_statistics_grp}    Get Value       //input[@name='artl_statistics_grp']
    ${astmt_list_type}    Get Value       //input[@name='astmt_list_type']
    ${material_type}    Get Value       //input[@name='material_type']
    ${valuation_class}    Get Value       //input[@name='valuation_class']
    ${e_comm_name_th}    Get Value       //input[@name='e_comm_name_th']
    ${search_word}    Get Value       //input[@name='search_word']
    ${search_remark}    Get Value       //input[@name='search_remark']
    ${product_model}    Get Value       //input[@name='product_model']
    ${brand_id}    Get Value    //input[@name='brand_id']
    ${old_article}    Get Value    //input[@name='old_article']
    ${repack}    Get Value       //input[@name='repack']
    ${product_transform}    Get Value       //input[@name='product_transform']
    ${country_of_region}    Get Value    //input[@name='country_of_region']
    ${regions_origin}    Get Value    //input[@name='regions_origin']
    ${hb_nonhb}    Get Value       //input[@name='hb_nonhb']
    ${production}    Get Value    //input[@name='production']
    ${tradmark}    Get Value       //input[@name='tradmark']

    #Section 2
    ${tot_shelf_life}    Get Value    //input[@name='tot_shelf_life']/parent::div
    ${rem_shelf_life}    Get Value       //input[@name='rem_shelf_life']/parent::div
    
    #Section 3
    ${product_status}    Get Value       //input[@name='product_status']
    ${abc_indicator}    Get Value       //input[@name='abc_indicator']
    ${product_sub_indicator}    Get Value       //input[@name='product_sub_indicator']
    ${product_role}    Get Value       //input[@name='product_role']
    ${product_sub_role}    Get Value       //input[@name='product_sub_role']
    ${product_trend}    Get Value       //input[@name='product_trend']

    #Section 4
    ${head_purchaser_group_no}    Get Value       //input[@name='head_purchaser_group_no']
    ${head_import_purchase}    Get Value       //input[@name='head_import_purchase']
    ${head_im}    Get Value       //input[@name='head_im']
    ${shipping_group}    Get Value       //input[@name='shipping_group']
    ${purchaser_group_no}    Get Value       //input[@name='purchaser_group_no']
    ${import_purchase}    Get Value       //input[@name='import_purchase']
    ${im_group}    Get Value       //input[@name='im_group']

    #Section 5
    ${avail_check}    Get Value       //input[@name='avail_check']
    ${gen_item_cat_grp}    Get Value       //input[@name='gen_item_cat_grp']
    ${tax_class}    Get Value       //input[@name='tax_class']
    ${serial_number_profile}    Get Value       //input[@name='serial_number_profile']
    ${merchandise_category3}    Get Value       //input[@name='merchandise_category3']
    ${stor_condition}    Get Value       //input[@name='stor_condition']
    ${loading_group}    Get Value       //input[@name='loading_group']

    #Section 6
    #หน่วย 1
    ${units_id_s6_u1}    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div/following-sibling::*[1]//input[@name='units_id']
    ${rate_unit_base_s6_u1}    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div/following-sibling::*[1]//input[@name='rate_unit_base']
    ${units_sale_id_s6_u1}    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div/following-sibling::*[1]//input[@name='units_sale_id']
    ${rate_unit_code_s6_u1}    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div/following-sibling::*[1]//input[@name='rate_unit_code']
    ${barcode_no_s6_u1}    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div/following-sibling::*[1]//input[@name='barcode_no']
    ${width_base_s6_u1}    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div/following-sibling::*[1]//input[@name='width']
    ${long_base_s6_u1}    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div/following-sibling::*[1]//input[@name='long']
    ${high_base_s6_u1}    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div/following-sibling::*[1]//input[@name='high']
    ${volume_base_s6_u1}    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div/following-sibling::*[1]//input[@name='volume']
    ${weight_base_s6_u1}    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div/following-sibling::*[1]//input[@name='weight']

    #หน่วย 2
    ${units_id_s6_u2_base}=    Run Keyword And Ignore Error    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div/following-sibling::*[1]//input[@name='units_id']
    ${units_id_s6_u2_result} =	Get From List	${units_id_s6_u2_base}    0
    ${units_id_s6_u2_value} =	Get From List	${units_id_s6_u2_base}    1

    IF    '${units_id_s6_u2_result}' == 'FAIL'
        ${units_id_s6_u2_result}    Set Variable    -
    ELSE
       ${units_id_s6_u2_result}    Set Variable    ${units_id_s6_u2_value} 
    END
    
    ${units_id_s6_u2}    Set Variable    ${units_id_s6_u2_result}
##############################################################################################################################################################################################################################################################
    ${rate_unit_base_s6_u2_base}=    Run Keyword And Ignore Error    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div/following-sibling::*[1]//input[@name='rate_unit_base']
    ${rate_unit_base_s6_u2_result} =	Get From List	${rate_unit_base_s6_u2_base}    0
    ${rate_unit_base_s6_u2_value} =	Get From List	${rate_unit_base_s6_u2_base}    1

    IF    '${rate_unit_base_s6_u2_result}' == 'FAIL'
        ${rate_unit_base_s6_u2_result}    Set Variable    -
    ELSE
       ${rate_unit_base_s6_u2_result}    Set Variable    ${rate_unit_base_s6_u2_value} 
    END
    
    ${rate_unit_base_s6_u2}    Set Variable    ${rate_unit_base_s6_u2_result}
##############################################################################################################################################################################################################################################################
    ${units_sale_id_s6_u2_base}=    Run Keyword And Ignore Error    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div/following-sibling::*[1]//input[@name='units_sale_id']
    ${units_sale_id_s6_u2_result} =	Get From List	${units_sale_id_s6_u2_base}    0
    ${units_sale_id_s6_u2_value} =	Get From List	${units_sale_id_s6_u2_base}    1

    IF    '${units_sale_id_s6_u2_result}' == 'FAIL'
        ${units_sale_id_s6_u2_result}    Set Variable    -
    ELSE
       ${units_sale_id_s6_u2_result}    Set Variable    ${units_sale_id_s6_u2_value} 
    END
    
    ${units_sale_id_s6_u2}    Set Variable    ${units_sale_id_s6_u2_result}
##############################################################################################################################################################################################################################################################
    ${rate_unit_code_s6_u2_base}=    Run Keyword And Ignore Error    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div/following-sibling::*[1]//input[@name='rate_unit_code']
    ${rate_unit_code_s6_u2_result} =	Get From List	${rate_unit_code_s6_u2_base}    0
    ${rate_unit_code_s6_u2_value} =	Get From List	${rate_unit_code_s6_u2_base}    1

    IF    '${rate_unit_code_s6_u2_result}' == 'FAIL'
        ${rate_unit_code_s6_u2_result}    Set Variable    -
    ELSE
       ${rate_unit_code_s6_u2_result}    Set Variable    ${rate_unit_code_s6_u2_value} 
    END
    
    ${rate_unit_code_s6_u2}    Set Variable    ${rate_unit_code_s6_u2_result}
##############################################################################################################################################################################################################################################################
    ${barcode_no_s6_u2_base}=    Run Keyword And Ignore Error    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div/following-sibling::*[1]//input[@name='barcode_no']
    ${barcode_no_s6_u2_result} =	Get From List	${barcode_no_s6_u2_base}    0
    ${barcode_no_s6_u2_value} =	Get From List	${barcode_no_s6_u2_base}    1

    IF    '${barcode_no_s6_u2_result}' == 'FAIL'
        ${barcode_no_s6_u2_result}    Set Variable    -
    ELSE
       ${barcode_no_s6_u2_result}    Set Variable    ${barcode_no_s6_u2_value} 
    END
    
    ${barcode_no_s6_u2}    Set Variable    ${barcode_no_s6_u2_result}
##############################################################################################################################################################################################################################################################
    ${width_base_s6_u2_base}=    Run Keyword And Ignore Error    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div/following-sibling::*[1]//input[@name='width']
    ${width_base_s6_u2_result} =	Get From List	${width_base_s6_u2_base}    0
    ${width_base_s6_u2_value} =	Get From List	${width_base_s6_u2_base}    1

    IF    '${width_base_s6_u2_result}' == 'FAIL'
        ${width_base_s6_u2_result}    Set Variable    -
    ELSE
       ${width_base_s6_u2_result}    Set Variable    ${width_base_s6_u2_value} 
    END
    
    ${width_base_s6_u2}    Set Variable    ${width_base_s6_u2_result}
##############################################################################################################################################################################################################################################################
    ${long_base_s6_u2_base}=    Run Keyword And Ignore Error    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div/following-sibling::*[1]//input[@name='long']
    ${long_base_s6_u2_result} =	Get From List	${long_base_s6_u2_base}    0
    ${long_base_s6_u2_value} =	Get From List	${long_base_s6_u2_base}    1

    IF    '${long_base_s6_u2_result}' == 'FAIL'
        ${long_base_s6_u2_result}    Set Variable    -
    ELSE
       ${long_base_s6_u2_result}    Set Variable    ${long_base_s6_u2_value} 
    END
    
    ${long_base_s6_u2}    Set Variable    ${long_base_s6_u2_result}
##############################################################################################################################################################################################################################################################
    ${high_base_s6_u2_base}=    Run Keyword And Ignore Error    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div/following-sibling::*[1]//input[@name='high']
    ${high_base_s6_u2_result} =	Get From List	${high_base_s6_u2_base}    0
    ${high_base_s6_u2_value} =	Get From List	${high_base_s6_u2_base}    1

    IF    '${high_base_s6_u2_result}' == 'FAIL'
        ${high_base_s6_u2_result}    Set Variable    -
    ELSE
       ${high_base_s6_u2_result}    Set Variable    ${high_base_s6_u2_value} 
    END
    
    ${high_base_s6_u2}    Set Variable    ${high_base_s6_u2_result}
##############################################################################################################################################################################################################################################################
    ${volume_base_s6_u2_base}=    Run Keyword And Ignore Error    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div/following-sibling::*[1]//input[@name='volume']
    ${volume_base_s6_u2_result} =	Get From List	${volume_base_s6_u2_base}    0
    ${volume_base_s6_u2_value} =	Get From List	${volume_base_s6_u2_base}    1

    IF    '${volume_base_s6_u2_result}' == 'FAIL'
        ${volume_base_s6_u2_result}    Set Variable    -
    ELSE
       ${volume_base_s6_u2_result}    Set Variable    ${volume_base_s6_u2_value} 
    END
    
    ${volume_base_s6_u2}    Set Variable    ${volume_base_s6_u2_result}
##############################################################################################################################################################################################################################################################
    ${weight_base_s6_u2_base}=    Run Keyword And Ignore Error    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div/following-sibling::*[1]//input[@name='weight']
    ${weight_base_s6_u2_result} =	Get From List	${weight_base_s6_u2_base}    0
    ${weight_base_s6_u2_value} =	Get From List	${weight_base_s6_u2_base}    1

    IF    '${weight_base_s6_u2_result}' == 'FAIL'
        ${weight_base_s6_u2_result}    Set Variable    -
    ELSE
       ${weight_base_s6_u2_result}    Set Variable    ${weight_base_s6_u2_value} 
    END
    
    ${weight_base_s6_u2}    Set Variable    ${weight_base_s6_u2_result}
 ##############################################################################################################################################################################################################################################################
   
    #หน่วย 3
    ${units_id_s6_u3_base}=    Run Keyword And Ignore Error    Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div/following-sibling::*[1]//input[@name='units_id']
    ${units_id_s6_u3_result} =	Get From List	${units_id_s6_u3_base}    0
    ${units_id_s6_u3_value} =	Get From List	${units_id_s6_u3_base}    1

    IF    '${units_id_s6_u3_result}' == 'FAIL'
        ${units_id_s6_u3_result}    Set Variable    -
    ELSE
       ${units_id_s6_u3_result}    Set Variable    ${units_id_s6_u3_value} 
    END
    
    ${units_id_s6_u3}    Set Variable    ${units_id_s6_u3_result}
##############################################################################################################################################################################################################################################################    
    ${rate_unit_base_s6_u3_base}=    Run Keyword And Ignore Error        Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div/following-sibling::*[1]//input[@name='rate_unit_base']
    ${rate_unit_base_s6_u3_result} =	Get From List	${rate_unit_base_s6_u3_base}    0
    ${rate_unit_base_s6_u3_value} =	Get From List	${rate_unit_base_s6_u3_base}    1

    IF    '${rate_unit_base_s6_u3_result}' == 'FAIL'
        ${rate_unit_base_s6_u3_result}    Set Variable    -
    ELSE
       ${rate_unit_base_s6_u3_result}    Set Variable    ${rate_unit_base_s6_u3_value} 
    END
    
    ${rate_unit_base_s6_u3}    Set Variable    ${rate_unit_base_s6_u3_result}
##############################################################################################################################################################################################################################################################
    ${units_sale_id_s6_u3_base}=    Run Keyword And Ignore Error        Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div/following-sibling::*[1]//input[@name='units_sale_id']
    ${units_sale_id_s6_u3_result} =	Get From List	${units_sale_id_s6_u3_base}    0
    ${units_sale_id_s6_u3_value} =	Get From List	${units_sale_id_s6_u3_base}    1

    IF    '${units_sale_id_s6_u3_result}' == 'FAIL'
        ${units_sale_id_s6_u3_result}    Set Variable    -
    ELSE
       ${units_sale_id_s6_u3_result}    Set Variable    ${units_sale_id_s6_u3_value} 
    END
    
    ${units_sale_id_s6_u3}    Set Variable    ${units_sale_id_s6_u3_result}
##############################################################################################################################################################################################################################################################
    ${rate_unit_code_s6_u3_base}=    Run Keyword And Ignore Error        Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div/following-sibling::*[1]//input[@name='rate_unit_code']
    ${rate_unit_code_s6_u3_result} =	Get From List	${rate_unit_code_s6_u3_base}    0
    ${rate_unit_code_s6_u3_value} =	Get From List	${rate_unit_code_s6_u3_base}    1

    IF    '${rate_unit_code_s6_u3_result}' == 'FAIL'
        ${rate_unit_code_s6_u3_result}    Set Variable    -
    ELSE
       ${rate_unit_code_s6_u3_result}    Set Variable    ${rate_unit_code_s6_u3_value} 
    END
    
    ${rate_unit_code_s6_u3}    Set Variable    ${rate_unit_code_s6_u3_result}
##############################################################################################################################################################################################################################################################
    ${barcode_no_s6_u3_base}=    Run Keyword And Ignore Error        Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div/following-sibling::*[1]//input[@name='barcode_no']
    ${barcode_no_s6_u3_result} =	Get From List	${barcode_no_s6_u3_base}    0
    ${barcode_no_s6_u3_value} =	Get From List	${barcode_no_s6_u3_base}    1

    IF    '${barcode_no_s6_u3_result}' == 'FAIL'
        ${barcode_no_s6_u3_result}    Set Variable    -
    ELSE
       ${barcode_no_s6_u3_result}    Set Variable    ${barcode_no_s6_u3_value} 
    END
    
    ${barcode_no_s6_u3}    Set Variable    ${barcode_no_s6_u3_result}
##############################################################################################################################################################################################################################################################
    ${width_base_s6_u3_base}=    Run Keyword And Ignore Error        Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div/following-sibling::*[1]//input[@name='width']
    ${width_base_s6_u3_result} =	Get From List	${width_base_s6_u3_base}    0
    ${width_base_s6_u3_value} =	Get From List	${width_base_s6_u3_base}    1

    IF    '${width_base_s6_u3_result}' == 'FAIL'
        ${width_base_s6_u3_result}    Set Variable    -
    ELSE
       ${width_base_s6_u3_result}    Set Variable    ${width_base_s6_u3_value} 
    END
    
    ${width_base_s6_u3}    Set Variable    ${width_base_s6_u3_result}
##############################################################################################################################################################################################################################################################
    ${long_base_s6_u3_base}=    Run Keyword And Ignore Error        Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div/following-sibling::*[1]//input[@name='long']
    ${long_base_s6_u3_result} =	Get From List	${long_base_s6_u3_base}    0
    ${long_base_s6_u3_value} =	Get From List	${long_base_s6_u3_base}    1

    IF    '${long_base_s6_u3_result}' == 'FAIL'
        ${long_base_s6_u3_result}    Set Variable    -
    ELSE
       ${long_base_s6_u3_result}    Set Variable    ${long_base_s6_u3_value} 
    END
    
    ${long_base_s6_u3}    Set Variable    ${long_base_s6_u3_result}
##############################################################################################################################################################################################################################################################
    ${high_base_s6_u3_base}=    Run Keyword And Ignore Error        Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div/following-sibling::*[1]//input[@name='high']
    ${high_base_s6_u3_result} =	Get From List	${high_base_s6_u3_base}    0
    ${high_base_s6_u3_value} =	Get From List	${high_base_s6_u3_base}    1

    IF    '${high_base_s6_u3_result}' == 'FAIL'
        ${high_base_s6_u3_result}    Set Variable    -
    ELSE
       ${high_base_s6_u3_result}    Set Variable    ${high_base_s6_u3_value} 
    END
    
    ${high_base_s6_u3}    Set Variable    ${high_base_s6_u3_result}
##############################################################################################################################################################################################################################################################
    ${volume_base_s6_u3_base}=    Run Keyword And Ignore Error        Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div/following-sibling::*[1]//input[@name='volume']
     ${volume_base_s6_u3_result} =	Get From List	${volume_base_s6_u3_base}    0
    ${volume_base_s6_u3_value} =	Get From List	${volume_base_s6_u3_base}    1

    IF    '${volume_base_s6_u3_result}' == 'FAIL'
        ${volume_base_s6_u3_result}    Set Variable    -
    ELSE
       ${volume_base_s6_u3_result}    Set Variable    ${volume_base_s6_u3_value} 
    END
    
    ${volume_base_s6_u3}    Set Variable    ${volume_base_s6_u3_result}
##############################################################################################################################################################################################################################################################
    ${weight_base_s6_u3_base}=    Run Keyword And Ignore Error        Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div/following-sibling::*[1]//input[@name='weight']
    ${weight_base_s6_u3_result} =	Get From List	${weight_base_s6_u3_base}    0
    ${weight_base_s6_u3_value} =	Get From List	${weight_base_s6_u3_base}    1

    IF    '${weight_base_s6_u3_result}' == 'FAIL'
        ${weight_base_s6_u3_result}    Set Variable    -
    ELSE
       ${weight_base_s6_u3_result}    Set Variable    ${weight_base_s6_u3_value} 
    END
    
    ${weight_base_s6_u3}    Set Variable    ${weight_base_s6_u3_result}
 ##############################################################################################################################################################################################################################################################

    #หน่วย 4
    ${units_id_s6_u4_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div/following-sibling::*[1]//input[@name='units_id']
    ${units_id_s6_u4_result} =	Get From List	${units_id_s6_u4_base}    0
    ${units_id_s6_u4_value} =	Get From List	${units_id_s6_u4_base}    1

    IF    '${units_id_s6_u4_result}' == 'FAIL'
        ${units_id_s6_u4_result}    Set Variable    -
    ELSE
       ${units_id_s6_u4_result}    Set Variable    ${units_id_s6_u4_value} 
    END
    
    ${units_id_s6_u4}    Set Variable    ${units_id_s6_u4_result}
##############################################################################################################################################################################################################################################################
    ${rate_unit_base_s6_u4_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div/following-sibling::*[1]//input[@name='rate_unit_base']
    ${rate_unit_base_s6_u4_result} =	Get From List	${rate_unit_base_s6_u4_base}    0
    ${rate_unit_base_s6_u4_value} =	Get From List	${rate_unit_base_s6_u4_base}    1

    IF    '${rate_unit_base_s6_u4_result}' == 'FAIL'
        ${rate_unit_base_s6_u4_result}    Set Variable    -
    ELSE
       ${rate_unit_base_s6_u4_result}    Set Variable    ${rate_unit_base_s6_u4_value} 
    END
    
    ${rate_unit_base_s6_u4}    Set Variable    ${rate_unit_base_s6_u4_result}
##############################################################################################################################################################################################################################################################
    ${units_sale_id_s6_u4_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div/following-sibling::*[1]//input[@name='units_sale_id']
    ${units_sale_id_s6_u4_result} =	Get From List	${units_sale_id_s6_u4_base}    0
    ${units_sale_id_s6_u4_value} =	Get From List	${units_sale_id_s6_u4_base}    1

    IF    '${units_sale_id_s6_u4_result}' == 'FAIL'
        ${units_sale_id_s6_u4_result}    Set Variable    -
    ELSE
       ${units_sale_id_s6_u4_result}    Set Variable    ${units_sale_id_s6_u4_value} 
    END
    
    ${units_sale_id_s6_u4}    Set Variable    ${units_sale_id_s6_u4_result}
##############################################################################################################################################################################################################################################################
    ${rate_unit_code_s6_u4_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div/following-sibling::*[1]//input[@name='rate_unit_code']
    ${rate_unit_code_s6_u4_result} =	Get From List	${rate_unit_code_s6_u4_base}    0
    ${rate_unit_code_s6_u4_value} =	Get From List	${rate_unit_code_s6_u4_base}    1

    IF    '${rate_unit_code_s6_u4_result}' == 'FAIL'
        ${rate_unit_code_s6_u4_result}    Set Variable    -
    ELSE
       ${rate_unit_code_s6_u4_result}    Set Variable    ${rate_unit_code_s6_u4_value} 
    END
    
    ${rate_unit_code_s6_u4}    Set Variable    ${rate_unit_code_s6_u4_result}
##############################################################################################################################################################################################################################################################
    ${barcode_no_s6_u4_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div/following-sibling::*[1]//input[@name='barcode_no']
    ${barcode_no_s6_u4_result} =	Get From List	${barcode_no_s6_u4_base}    0
    ${barcode_no_s6_u4_value} =	Get From List	${barcode_no_s6_u4_base}    1

    IF    '${barcode_no_s6_u4_result}' == 'FAIL'
        ${barcode_no_s6_u4_result}    Set Variable    -
    ELSE
       ${barcode_no_s6_u4_result}    Set Variable    ${barcode_no_s6_u4_value} 
    END
    
    ${barcode_no_s6_u4}    Set Variable    ${barcode_no_s6_u4_result}
##############################################################################################################################################################################################################################################################
    ${width_base_s6_u4_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div/following-sibling::*[1]//input[@name='width']
    ${width_base_s6_u4_result} =	Get From List	${width_base_s6_u4_base}    0
    ${width_base_s6_u4_value} =	Get From List	${width_base_s6_u4_base}    1

    IF    '${width_base_s6_u4_result}' == 'FAIL'
        ${width_base_s6_u4_result}    Set Variable    -
    ELSE
       ${width_base_s6_u4_result}    Set Variable    ${width_base_s6_u4_value} 
    END
    
    ${width_base_s6_u4}    Set Variable    ${width_base_s6_u4_result}
##############################################################################################################################################################################################################################################################
    ${long_base_s6_u4_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div/following-sibling::*[1]//input[@name='long']
    ${long_base_s6_u4_result} =	Get From List	${long_base_s6_u4_base}    0
    ${long_base_s6_u4_value} =	Get From List	${long_base_s6_u4_base}    1

    IF    '${long_base_s6_u4_result}' == 'FAIL'
        ${long_base_s6_u4_result}    Set Variable    -
    ELSE
       ${long_base_s6_u4_result}    Set Variable    ${long_base_s6_u4_value} 
    END
    
    ${long_base_s6_u4}    Set Variable    ${long_base_s6_u4_result}
##############################################################################################################################################################################################################################################################
    ${high_base_s6_u4_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div/following-sibling::*[1]//input[@name='high']
    ${high_base_s6_u4_result} =	Get From List	${high_base_s6_u4_base}    0
    ${high_base_s6_u4_value} =	Get From List	${high_base_s6_u4_base}    1

    IF    '${high_base_s6_u4_result}' == 'FAIL'
        ${high_base_s6_u4_result}    Set Variable    -
    ELSE
       ${high_base_s6_u4_result}    Set Variable    ${high_base_s6_u4_value} 
    END
    
    ${high_base_s6_u4}    Set Variable    ${high_base_s6_u4_result}
##############################################################################################################################################################################################################################################################
    ${volume_base_s6_u4_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div/following-sibling::*[1]//input[@name='volume']
    ${volume_base_s6_u4_result} =	Get From List	${volume_base_s6_u4_base}    0
    ${volume_base_s6_u4_value} =	Get From List	${volume_base_s6_u4_base}    1

    IF    '${volume_base_s6_u4_result}' == 'FAIL'
        ${volume_base_s6_u4_result}    Set Variable    -
    ELSE
       ${volume_base_s6_u4_result}    Set Variable    ${volume_base_s6_u4_value} 
    END
    
    ${volume_base_s6_u4}    Set Variable    ${volume_base_s6_u4_result}
##############################################################################################################################################################################################################################################################
    ${weight_base_s6_u4_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div/following-sibling::*[1]//input[@name='weight']
    ${weight_base_s6_u4_result} =	Get From List	${weight_base_s6_u4_base}    0
    ${weight_base_s6_u4_value} =	Get From List	${weight_base_s6_u4_base}    1

    IF    '${weight_base_s6_u4_result}' == 'FAIL'
        ${weight_base_s6_u4_result}    Set Variable    -
    ELSE
       ${weight_base_s6_u4_result}    Set Variable    ${weight_base_s6_u4_value} 
    END
    
    ${weight_base_s6_u4}    Set Variable    ${weight_base_s6_u4_result}
 ##############################################################################################################################################################################################################################################################

    #หน่วย 5
    ${units_id_s6_u5_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div/following-sibling::*[1]//input[@name='units_id']
    ${units_id_s6_u5_result} =	Get From List	${units_id_s6_u5_base}    0
    ${units_id_s6_u5_value} =	Get From List	${units_id_s6_u5_base}    1

    IF    '${units_id_s6_u5_result}' == 'FAIL'
        ${units_id_s6_u5_result}    Set Variable    -
    ELSE
       ${units_id_s6_u5_result}    Set Variable    ${units_id_s6_u5_value} 
    END
    
    ${units_id_s6_u5}    Set Variable    ${units_id_s6_u5_result}
##############################################################################################################################################################################################################################################################
    ${rate_unit_base_s6_u5_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div/following-sibling::*[1]//input[@name='rate_unit_base']
    ${rate_unit_base_s6_u5_result} =	Get From List	${rate_unit_base_s6_u5_base}    0
    ${rate_unit_base_s6_u5_value} =	Get From List	${rate_unit_base_s6_u5_base}    1

    IF    '${rate_unit_base_s6_u5_result}' == 'FAIL'
        ${rate_unit_base_s6_u5_result}    Set Variable    -
    ELSE
       ${rate_unit_base_s6_u5_result}    Set Variable    ${rate_unit_base_s6_u5_value} 
    END
    
    ${rate_unit_base_s6_u5}    Set Variable    ${rate_unit_base_s6_u5_result}
##############################################################################################################################################################################################################################################################
    ${units_sale_id_s6_u5_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div/following-sibling::*[1]//input[@name='units_sale_id']
    ${units_sale_id_s6_u5_result} =	Get From List	${units_sale_id_s6_u5_base}    0
    ${units_sale_id_s6_u5_value} =	Get From List	${units_sale_id_s6_u5_base}    1

    IF    '${units_sale_id_s6_u5_result}' == 'FAIL'
        ${units_sale_id_s6_u5_result}    Set Variable    -
    ELSE
       ${units_sale_id_s6_u5_result}    Set Variable    ${units_sale_id_s6_u5_value} 
    END
    
    ${units_sale_id_s6_u5}    Set Variable    ${units_sale_id_s6_u5_result}
##############################################################################################################################################################################################################################################################
    ${rate_unit_code_s6_u5_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div/following-sibling::*[1]//input[@name='rate_unit_code']
    ${rate_unit_code_s6_u5_result} =	Get From List	${rate_unit_code_s6_u5_base}    0
    ${rate_unit_code_s6_u5_value} =	Get From List	${rate_unit_code_s6_u5_base}    1

    IF    '${rate_unit_code_s6_u5_result}' == 'FAIL'
        ${rate_unit_code_s6_u5_result}    Set Variable    -
    ELSE
       ${rate_unit_code_s6_u5_result}    Set Variable    ${rate_unit_code_s6_u5_value} 
    END
    
    ${rate_unit_code_s6_u5}    Set Variable    ${rate_unit_code_s6_u5_result}
##############################################################################################################################################################################################################################################################
    ${barcode_no_s6_u5_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div/following-sibling::*[1]//input[@name='barcode_no']
    ${barcode_no_s6_u5_result} =	Get From List	${barcode_no_s6_u5_base}    0
    ${barcode_no_s6_u5_value} =	Get From List	${barcode_no_s6_u5_base}    1

    IF    '${barcode_no_s6_u5_result}' == 'FAIL'
        ${barcode_no_s6_u5_result}    Set Variable    -
    ELSE
       ${barcode_no_s6_u5_result}    Set Variable    ${barcode_no_s6_u5_value} 
    END
    
    ${barcode_no_s6_u5}    Set Variable    ${barcode_no_s6_u5_result}
##############################################################################################################################################################################################################################################################
    ${width_base_s6_u5_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div/following-sibling::*[1]//input[@name='width']
    ${width_base_s6_u5_result} =	Get From List	${width_base_s6_u5_base}    0
    ${width_base_s6_u5_value} =	Get From List	${width_base_s6_u5_base}    1

    IF    '${width_base_s6_u5_result}' == 'FAIL'
        ${width_base_s6_u5_result}    Set Variable    -
    ELSE
       ${width_base_s6_u5_result}    Set Variable    ${width_base_s6_u5_value} 
    END
    
    ${width_base_s6_u5}    Set Variable    ${width_base_s6_u5_result}
##############################################################################################################################################################################################################################################################
    ${long_base_s6_u5_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div/following-sibling::*[1]//input[@name='long']
    ${long_base_s6_u5_result} =	Get From List	${long_base_s6_u5_base}    0
    ${long_base_s6_u5_value} =	Get From List	${long_base_s6_u5_base}    1

    IF    '${long_base_s6_u5_result}' == 'FAIL'
        ${long_base_s6_u5_result}    Set Variable    -
    ELSE
       ${long_base_s6_u5_result}    Set Variable    ${long_base_s6_u5_value} 
    END
    
    ${long_base_s6_u5}    Set Variable    ${long_base_s6_u5_result}
##############################################################################################################################################################################################################################################################
    ${high_base_s6_u5_base}=    Run Keyword And Ignore Error           Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div/following-sibling::*[1]//input[@name='high']
    ${high_base_s6_u5_result} =	Get From List	${high_base_s6_u5_base}    0
    ${high_base_s6_u5_value} =	Get From List	${high_base_s6_u5_base}    1

    IF    '${high_base_s6_u5_result}' == 'FAIL'
        ${high_base_s6_u5_result}    Set Variable    -
    ELSE
       ${high_base_s6_u5_result}    Set Variable    ${high_base_s6_u5_value} 
    END
    
    ${high_base_s6_u5}    Set Variable    ${high_base_s6_u5_result}
##############################################################################################################################################################################################################################################################
    ${volume_base_s6_u5_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div/following-sibling::*[1]//input[@name='volume']
    ${volume_base_s6_u5_result} =	Get From List	${volume_base_s6_u5_base}    0
    ${volume_base_s6_u5_value} =	Get From List	${volume_base_s6_u5_base}    1

    IF    '${volume_base_s6_u5_result}' == 'FAIL'
        ${volume_base_s6_u5_result}    Set Variable    -
    ELSE
       ${volume_base_s6_u5_result}    Set Variable    ${volume_base_s6_u5_value} 
    END
    
    ${volume_base_s6_u5}    Set Variable    ${volume_base_s6_u5_result}
##############################################################################################################################################################################################################################################################
    ${weight_base_s6_u5_base}=    Run Keyword And Ignore Error            Get Value       //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div/following-sibling::*[1]//input[@name='weight']
    ${weight_base_s6_u5_result} =	Get From List	${weight_base_s6_u5_base}    0
    ${weight_base_s6_u5_value} =	Get From List	${weight_base_s6_u5_base}    1

    IF    '${weight_base_s6_u5_result}' == 'FAIL'
        ${weight_base_s6_u5_result}    Set Variable    -
    ELSE
       ${weight_base_s6_u5_result}    Set Variable    ${weight_base_s6_u5_value} 
    END
    
    ${weight_base_s6_u5}    Set Variable    ${weight_base_s6_u5_result}
 ##############################################################################################################################################################################################################################################################

    #Section 7
    #หน่วย 1
    ${units_id_s7_u1}    Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div//input[@name='units_id']
    ${width_base_s7_u1}    Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div//input[@name='width']
    ${long_base_s7_u1}    Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div//input[@name='long']
    ${high_base_s7_u1}    Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div//input[@name='high']
    ${volume_base_s7_u1}    Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div//input[@name='volume']
    ${weight_base_s7_u1}    Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='1']/parent::div//input[@name='weight']
    
    #หน่วย 2
    ${units_id_s7_u2}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div//input[@name='units_id']
    ${width_base_s7_u2}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div//input[@name='width']
    ${long_base_s7_u2}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div//input[@name='long']
    ${high_base_s7_u2}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div//input[@name='high']
    ${volume_base_s7_u2}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div//input[@name='volume']
    ${weight_base_s7_u2}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='2']/parent::div//input[@name='weight']
    
    #หน่วย 3
    ${units_id_s7_u3}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div//input[@name='units_id']
    ${width_base_s7_u3}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div//input[@name='width']
    ${long_base_s7_u3}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div//input[@name='long']
    ${high_base_s7_u3}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div//input[@name='high']
    ${volume_base_s7_u3}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div//input[@name='volume']
    ${weight_base_s7_u3}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='3']/parent::div//input[@name='weight']

    #หน่วย 4
    ${units_id_s7_u4}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div//input[@name='units_id']
    ${width_base_s7_u4}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div//input[@name='width']
    ${long_base_s7_u4}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div//input[@name='long']
    ${high_base_s7_u4}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div//input[@name='high']
    ${volume_base_s7_u4}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div//input[@name='volume']
    ${weight_base_s7_u4}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='4']/parent::div//input[@name='weight']

    #หน่วย 5
    ${units_id_s7_u5}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div//input[@name='units_id']
    ${width_base_s7_u5}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div//input[@name='width']
    ${long_base_s7_u5}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div//input[@name='long']
    ${high_base_s7_u5}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div//input[@name='high']
    ${volume_base_s7_u5}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div//input[@name='volume']
    ${weight_base_s7_u5}=    Run Keyword And Ignore Error            Get Value       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/parent::div/parent::div/following-sibling::*[2]//*[text()='5']/parent::div//input[@name='weight']
    
    #Section 8
    ${units_id_section_8}    Get Value       //*[text()='8. ขนาดสินค้าที่ประกอบเสร็จ (เฉพาะสินค้าที่ต้องประกอบ)']/parent::div/parent::div/following-sibling::div//input[@name='units_id']
    ${width_section_8}    Get Value       //*[text()='8. ขนาดสินค้าที่ประกอบเสร็จ (เฉพาะสินค้าที่ต้องประกอบ)']/parent::div/parent::div/following-sibling::div//input[@name='width']/parent::div
    ${long_section_8}    Get Value       //*[text()='8. ขนาดสินค้าที่ประกอบเสร็จ (เฉพาะสินค้าที่ต้องประกอบ)']/parent::div/parent::div/following-sibling::div//input[@name='long']/parent::div
    ${high_section_8}    Get Value       //*[text()='8. ขนาดสินค้าที่ประกอบเสร็จ (เฉพาะสินค้าที่ต้องประกอบ)']/parent::div/parent::div/following-sibling::div//input[@name='high']/parent::div
    ${weight_section_8}    Get Value       //*[text()='8. ขนาดสินค้าที่ประกอบเสร็จ (เฉพาะสินค้าที่ต้องประกอบ)']/parent::div/parent::div/following-sibling::div//input[@name='weight']/parent::div
    ${volume_section_8}    Get Value       //*[text()='8. ขนาดสินค้าที่ประกอบเสร็จ (เฉพาะสินค้าที่ต้องประกอบ)']/parent::div/parent::div/following-sibling::div//input[@name='volume']/parent::div

    #Section 9
    ${units_id_section_9}    Get Value       //*[text()='9. รูปแบบการจัดเรียงและหน่วยที่ต้องการจัดเรียง']/parent::div/parent::div/following-sibling::div//input[@name='units_id']
    ${arrangement_pattern_section_9}    Get Value       //*[text()='9. รูปแบบการจัดเรียงและหน่วยที่ต้องการจัดเรียง']/parent::div/parent::div/following-sibling::div//input[@name='arrangement_pattern']
    ${cargo_area_section_9}    Get Value       //*[text()='9. รูปแบบการจัดเรียงและหน่วยที่ต้องการจัดเรียง']/parent::div/parent::div/following-sibling::div//input[@name='cargo_area']
    ${stock_show_section_9}    Get Value       //*[text()='9. รูปแบบการจัดเรียงและหน่วยที่ต้องการจัดเรียง']/parent::div/parent::div/following-sibling::div//input[@name='stock_show']
    ${ownership_show_section_9}    Get Value       //*[text()='9. รูปแบบการจัดเรียงและหน่วยที่ต้องการจัดเรียง']/parent::div/parent::div/following-sibling::div//input[@name='ownership_show']
    
    #Section 10


    #Section 11
    
    #Section 12
    ${first_sale_date}    Get Value       //input[@name='first_sale_date']

    #Section 13

    #Section 14
    ${highlight_sell_point}    Get Text       //*[text()='จุดเด่นจุดขาย']/parent::span/parent::label/following-sibling::div/div/div/following-sibling::*[1]/div/parent::div
    ${product_features}    Get Text       //*[text()='คุณสมบัติสินค้า']/parent::span/parent::label/following-sibling::div/div/div/following-sibling::*[1]/div
    ${maintenance}    Get Text       //*[text()='การบำรุงรักษา']/parent::span/parent::label/following-sibling::div/div/div/following-sibling::*[1]/div
    ${warranty_conditions}    Get Text       //*[text()='เงื่อนไขการรับประกัน']/parent::span/parent::label/following-sibling::div/div/div/following-sibling::*[1]/div
    ${usage}    Get Text       //*[text()='การใช้งาน']/parent::span/parent::label/following-sibling::div/div/div/following-sibling::*[1]/div
    ${precautions}    Get Text       //*[text()='ข้อควรระวัง']/parent::span/parent::label/following-sibling::div/div/div/following-sibling::*[1]/div

    #Section 15

    #Section 16

    #Section 17

    #Section 18

    #Section 19

    #TAP : LISTING
    #Wait And Click Element    //*[text()='Listing']
    #${sales_org}    Get Value    //input[@name='sales_org']/parent::div

    #TAP : Purchasing
    Wait And Click Element    //*[text()='Purchasing']
    ${lead_time}    Get Value    //input[@name='lead_time']
    ${return_defective}    Get Value    //input[@name='return_defective']
    ${net_cost_price}    Get Value    //input[@name='net_cost_price']
    ${currency}    Get Value    //input[@name='currency']

    #TAP : Sales
    #Wait And Click Element    //*[text()='Sales']

    #TAP : DC & store
    #Wait And Click Element    //*[text()='DC & store']


    #ตัวแปรทั้งหมดที่ใช้สำหรับบันทึกลง csv
    ${row}=    Create Dictionary    article_no=${article_no}    vendor_no=${vendor_no}    name_th=${name_th}    name_en=${name_en}    
    ...    article_category=${article_category}    merc_category_MC2=${merc_category_MC2}    merc_category_MC5=${merc_category_MC5}    division_type=${division_type}    artl_statistics_grp=${artl_statistics_grp}    
    ...    astmt_list_type=${astmt_list_type}    material_type=${material_type}    valuation_class=${valuation_class}    e_comm_name_th=${e_comm_name_th}    search_word=${search_word}    search_remark=${search_remark}
    ...    product_model=${product_model}    brand_id=${brand_id}    old_article=${old_article}    repack=${repack}    product_transform=${product_transform}    country_of_region=${country_of_region}
    ...    regions_origin=${regions_origin}    hb_nonhb=${hb_nonhb}    production=${production}    tradmark=${tradmark}    
    ...    tot_shelf_life=${tot_shelf_life}    rem_shelf_life=${rem_shelf_life}
    ...    product_status=${product_status}    abc_indicator=${abc_indicator}    product_sub_indicator=${product_sub_indicator}    product_role=${product_role}    product_sub_role=${product_sub_role}    product_trend=${product_trend}
    ...    head_purchaser_group_no=${head_purchaser_group_no}    head_import_purchase=${head_import_purchase}    head_im=${head_im}    shipping_group=${shipping_group}    purchaser_group_no=${purchaser_group_no}
    ...    import_purchase=${import_purchase}    im_group=${im_group}
    ...    avail_check=${avail_check}    gen_item_cat_grp=${gen_item_cat_grp}    tax_class=${tax_class}    serial_number_profile=${serial_number_profile}    merchandise_category3=${merchandise_category3}    stor_condition=${stor_condition}    loading_group=${loading_group}
    ...    units_id_s6_u1=${units_id_s6_u1}    rate_unit_base_s6_u1=${rate_unit_base_s6_u1}    units_sale_id_s6_u1=${units_sale_id_s6_u1}    rate_unit_code_s6_u1=${rate_unit_code_s6_u1}    barcode_no_s6_u1=${barcode_no_s6_u1}
    ...    width_base_s6_u1=${width_base_s6_u1}    long_base_s6_u1=${long_base_s6_u1}    high_base_s6_u1=${high_base_s6_u1}    weight_base_s6_u1=${weight_base_s6_u1}    volume_base_s6_u1=${volume_base_s6_u1}
    ...    units_id_s6_u2=${units_id_s6_u2}    rate_unit_base_s6_u2=${rate_unit_base_s6_u2}    units_sale_id_s6_u2=${units_sale_id_s6_u2}    rate_unit_code_s6_u2=${rate_unit_code_s6_u2}    barcode_no_s6_u2=${barcode_no_s6_u2}
    ...    width_base_s6_u2=${width_base_s6_u2}    long_base_s6_u2=${long_base_s6_u2}    high_base_s6_u2=${high_base_s6_u2}    weight_base_s6_u2=${weight_base_s6_u2}    volume_base_s6_u2=${volume_base_s6_u2}
    ...    units_id_s6_u3=${units_id_s6_u3}    rate_unit_base_s6_u3=${rate_unit_base_s6_u3}    units_sale_id_s6_u3=${units_sale_id_s6_u3}    rate_unit_code_s6_u3=${rate_unit_code_s6_u3}    barcode_no_s6_u3=${barcode_no_s6_u3}
    ...    width_base_s6_u3=${width_base_s6_u3}    long_base_s6_u3=${long_base_s6_u3}    high_base_s6_u3=${high_base_s6_u3}    weight_base_s6_u3=${weight_base_s6_u3}    volume_base_s6_u3=${volume_base_s6_u3}
    ...    units_id_s6_u4=${units_id_s6_u4}    rate_unit_base_s6_u4=${rate_unit_base_s6_u4}    units_sale_id_s6_u4=${units_sale_id_s6_u4}    rate_unit_code_s6_u4=${rate_unit_code_s6_u4}    barcode_no_s6_u4=${barcode_no_s6_u4}
    ...    width_base_s6_u4=${width_base_s6_u4}    long_base_s6_u4=${long_base_s6_u4}    high_base_s6_u4=${high_base_s6_u4}    weight_base_s6_u4=${weight_base_s6_u4}    volume_base_s6_u4=${volume_base_s6_u4}
    ...    units_id_s6_u5=${units_id_s6_u5}    rate_unit_base_s6_u5=${rate_unit_base_s6_u5}    units_sale_id_s6_u5=${units_sale_id_s6_u5}    rate_unit_code_s6_u5=${rate_unit_code_s6_u5}    barcode_no_s6_u5=${barcode_no_s6_u5}
    ...    width_base_s6_u5=${width_base_s6_u5}    long_base_s6_u5=${long_base_s6_u5}    high_base_s6_u5=${high_base_s6_u5}    weight_base_s6_u5=${weight_base_s6_u5}    volume_base_s6_u5=${volume_base_s6_u5}
    ...    units_id_s7_u1=${units_id_s7_u1}    width_base_s7_u1=${width_base_s7_u1}    long_base_s7_u1=${long_base_s7_u1}    high_base_s7_u1=${high_base_s7_u1}    weight_base_s7_u1=${weight_base_s7_u1}    volume_base_s7_u1=${volume_base_s7_u1}
    ...    units_id_s7_u2=${units_id_s7_u2}    width_base_s7_u2=${width_base_s7_u2}    long_base_s7_u2=${long_base_s7_u2}    high_base_s7_u2=${high_base_s7_u2}    weight_base_s7_u2=${weight_base_s7_u2}    volume_base_s7_u2=${volume_base_s7_u2}
    ...    units_id_s7_u3=${units_id_s7_u3}    width_base_s7_u3=${width_base_s7_u3}    long_base_s7_u3=${long_base_s7_u3}    high_base_s7_u3=${high_base_s7_u3}    weight_base_s7_u3=${weight_base_s7_u3}    volume_base_s7_u3=${volume_base_s7_u3}
    ...    units_id_s7_u4=${units_id_s7_u4}    width_base_s7_u4=${width_base_s7_u4}    long_base_s7_u4=${long_base_s7_u4}    high_base_s7_u4=${high_base_s7_u4}    weight_base_s7_u4=${weight_base_s7_u4}    volume_base_s7_u4=${volume_base_s7_u4}
    ...    units_id_s7_u5=${units_id_s7_u5}    width_base_s7_u5=${width_base_s7_u5}    long_base_s7_u5=${long_base_s7_u5}    high_base_s7_u5=${high_base_s7_u5}    weight_base_s7_u5=${weight_base_s7_u5}    volume_base_s7_u5=${volume_base_s7_u5}
    ...    units_id_section_8=${units_id_section_8}    width_section_8=${width_section_8}    long_section_8=${long_section_8}    high_section_8=${high_section_8}    weight_section_8=${weight_section_8}    volume_section_8=${volume_section_8}
    ...    units_id_section_9=${units_id_section_9}    arrangement_pattern_section_9=${arrangement_pattern_section_9}    cargo_area_section_9=${cargo_area_section_9}    stock_show_section_9=${stock_show_section_9}    ownership_show_section_9=${ownership_show_section_9}
    ...    first_sale_date=${first_sale_date}
    ...    highlight_sell_point=${highlight_sell_point}    product_features=${product_features}    maintenance=${maintenance}    warranty_conditions=${warranty_conditions}    usage=${usage}    precautions=${precautions}
    ...    lead_time=${lead_time}    return_defective=${return_defective}    net_cost_price=${net_cost_price}    currency=${currency}                
    
    #Field ชื่อ หรือ MC5 อาจจะมี " , " ใน Field นั้น อาจจะทำให้ column ใน file CSV คลาดเคลื่อน
    #ลบ " , " ออกจาก Value
    ${new_name_th}    Replace String    ${row['name_th']}    ,    ${SPACE}     
    ${new_name_en}    Replace String    ${row['name_en']}    ,    ${SPACE}   
    ${new_MC5}    Replace String    ${row['merc_category_MC5']}    ,    ${SPACE}
    ${new_net_cost_price}    Replace String    ${row['net_cost_price']}    ,    ${SPACE}     

    #แก้ไขการขึ้นบรรทัดใหม่ด้วยการ set value ในแต่ละ section
    ${header_art}    Set Variable    ${row['article_no']}, ${new_name_th}, ${new_name_en}, ${row['name_en']}    
    ${section_1_1}    Set Variable    ${row['article_category']}, ${row['merc_category_MC2']}, ${new_MC5}, ${row['division_type']}, ${row['artl_statistics_grp']}, ${row['astmt_list_type']}, ${row['material_type']}, ${row['valuation_class']}
    ${section_1_2}    Set Variable    ${row['e_comm_name_th']}, ${row['search_word']}, ${row['search_remark']}, ${row['product_model']}, ${row['brand_id']}, ${row['old_article']}, ${row['repack']}, ${row['product_transform']}, ${row['country_of_region']}
    ${section_1_3}    Set Variable    ${row['regions_origin']}, ${row['hb_nonhb']}, ${row['production']}, ${row['tradmark']}
    ${section_2}    Set Variable    ${row['tot_shelf_life']}, ${row['rem_shelf_life']}
    ${section_3}    Set Variable    ${row['product_status']}, ${row['abc_indicator']}, ${row['product_sub_indicator']}, ${row['product_role']}, ${row['product_sub_role']}, ${row['product_trend']}
    ${section_4}    Set Variable    ${row['head_purchaser_group_no']}, ${row['head_import_purchase']}, ${row['head_im']}, ${row['shipping_group']}, ${row['purchaser_group_no']}, ${row['import_purchase']}, ${row['im_group']}
    ${section_5}    Set Variable    ${row['avail_check']}, ${row['gen_item_cat_grp']}, ${row['tax_class']}, ${row['serial_number_profile']}, ${row['merchandise_category3']}, ${row['stor_condition']}, ${row['loading_group']}
    ${section_6_unit_1}    Set Variable    ${row['units_id_s6_u1']},${row['rate_unit_base_s6_u1']},${row['units_sale_id_s6_u1']},${row['rate_unit_code_s6_u1']},${row['barcode_no_s6_u1']},${row['width_base_s6_u1']},${row['long_base_s6_u1']},${row['high_base_s6_u1']},${row['volume_base_s6_u1']},${row['weight_base_s6_u1']}
    ${section_6_unit_2}    Set Variable    ${row['units_id_s6_u2']},${row['rate_unit_base_s6_u2']},${row['units_sale_id_s6_u2']},${row['rate_unit_code_s6_u2']},${row['barcode_no_s6_u2']},${row['width_base_s6_u2']},${row['long_base_s6_u2']},${row['high_base_s6_u2']},${row['volume_base_s6_u2']},${row['weight_base_s6_u2']}
    ${section_6_unit_3}    Set Variable    ${row['units_id_s6_u3']},${row['rate_unit_base_s6_u3']},${row['units_sale_id_s6_u3']},${row['rate_unit_code_s6_u3']},${row['barcode_no_s6_u3']},${row['width_base_s6_u3']},${row['long_base_s6_u3']},${row['high_base_s6_u3']},${row['volume_base_s6_u3']},${row['weight_base_s6_u3']}
    ${section_6_unit_4}    Set Variable    ${row['units_id_s6_u4']},${row['rate_unit_base_s6_u4']},${row['units_sale_id_s6_u4']},${row['rate_unit_code_s6_u4']},${row['barcode_no_s6_u4']},${row['width_base_s6_u4']},${row['long_base_s6_u4']},${row['high_base_s6_u4']},${row['volume_base_s6_u4']},${row['weight_base_s6_u4']}
    ${section_6_unit_5}    Set Variable    ${row['units_id_s6_u5']},${row['rate_unit_base_s6_u5']},${row['units_sale_id_s6_u5']},${row['rate_unit_code_s6_u5']},${row['barcode_no_s6_u5']},${row['width_base_s6_u5']},${row['long_base_s6_u5']},${row['high_base_s6_u5']},${row['volume_base_s6_u5']},${row['weight_base_s6_u5']}
    ${section_7_unit_1}    Set Variable    ${row['units_id_s7_u1']},${row['width_base_s7_u1']},${row['long_base_s7_u1']},${row['high_base_s7_u1']},${row['volume_base_s7_u1']},${row['weight_base_s7_u1']}
    ${section_7_unit_2}    Set Variable    ${row['units_id_s7_u2']},${row['width_base_s7_u2']},${row['long_base_s7_u2']},${row['high_base_s7_u2']},${row['volume_base_s7_u2']},${row['weight_base_s7_u2']}
    ${section_7_unit_3}    Set Variable    ${row['units_id_s7_u3']},${row['width_base_s7_u3']},${row['long_base_s7_u3']},${row['high_base_s7_u3']},${row['volume_base_s7_u3']},${row['weight_base_s7_u3']}
    ${section_7_unit_4}    Set Variable    ${row['units_id_s7_u4']},${row['width_base_s7_u4']},${row['long_base_s7_u4']},${row['high_base_s7_u4']},${row['volume_base_s7_u4']},${row['weight_base_s7_u4']}
    ${section_7_unit_5}    Set Variable    ${row['units_id_s7_u5']},${row['width_base_s7_u5']},${row['long_base_s7_u5']},${row['high_base_s7_u5']},${row['volume_base_s7_u5']},${row['weight_base_s7_u5']}
    #${section_8}    Set Variable    ${row['units_id_section_8']}, ${row['width_section_8']}, ${row['long_section_8']}, ${row['high_section_8']}, ${row['weight_section_8']}, ${row['volume_section_8']}
    #${section_9}    Set Variable    ${row['units_id_section_9']}, ${row['arrangement_pattern_section_9']}, ${row['cargo_area_section_9']}, ${row['stock_show_section_9']}, ${row['ownership_show_section_9']}
    ${section_12}    Set Variable    ${row['first_sale_date']}
    ${section_14}    Set Variable    ${row['highlight_sell_point']}, ${row['product_features']}, ${row['maintenance']}, ${row['warranty_conditions']}, ${row['usage']}, ${row['precautions']}
    ${tap_purchaser}    Set Variable    ${row['lead_time']}, ${row['return_defective']}, ${row['net_cost_price']}, ${row['currency']}

    
    #Final get ก่อน value บันทึกลง FIle csv
    ${data_section_1}    Set Variable    ${section_1_1},${section_1_2},${section_1_3}
    ${data_section_6}    Set Variable    ${section_6_unit_1},${section_6_unit_2},${section_6_unit_3},${section_6_unit_4},${section_6_unit_5}
    ${data_section_7}    Set Variable    ${section_7_unit_1},${section_7_unit_2},${section_7_unit_3},${section_7_unit_4},${section_7_unit_5}
    
    ${data_article}    Set Variable    ${data_section_6}


    Append To File    ${value_art}    ${data_article}\n