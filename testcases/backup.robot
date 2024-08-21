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
Test Teardown    Close All Browsers


*** Variables ***
${value_art}    C:/Automate/Web/Get_value_art/resources/get_value_art.csv


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
    ${article_no}    Run Keyword And Ignore Error    Get Value    //*[text()='รหัสสินค้า (Article Number)']/ancestor::label/following-sibling::*[1]//input
    ${set_article_no} =    Get From List    ${article_no}    1
    ${vendor_no}    Run Keyword And Ignore Error    Get Value    //input[@name='vendor_no']
    ${set_vendor_no} =	Get From List	${vendor_no}    1
    ${name_th}   Run Keyword And Ignore Error    Get Value    //input[@name='name_th']
    ${set_name_th} =    Get From List	${name_th}    1
    ${name_en}    Run Keyword And Ignore Error    Get Value    //input[@name='name_en']
    ${set_name_en} =	Get From List	${name_en}    1
    
    #TAP : Basic DATA
    #Section 1
    ${article_category}    Run Keyword And Ignore Error    Get Value    //input[@name='article_category']
    ${set_article_category} =    Get From List    ${article_category}    1
    ${merc_category_MC2}    Run Keyword And Ignore Error    Get Value    //input[@name='merchandise_category2']
    ${set_merc_category_MC2} =    Get From List    ${merc_category_MC2}    1
    ${merc_category_MC5}    Run Keyword And Ignore Error    Get Value       //input[@name='merchandise_category']
    ${set_merc_category_MC5} =    Get From List    ${merc_category_MC5}    1
    ${division_type}    Run Keyword And Ignore Error    Get Value       //input[@name='division']
    ${set_division_type} =    Get From List    ${division_type}    1
    ${artl_statistics_grp}    Run Keyword And Ignore Error    Get Value       //input[@name='artl_statistics_grp']
    ${set_artl_statistics_grp} =    Get From List    ${artl_statistics_grp}    1
    ${astmt_list_type}    Run Keyword And Ignore Error    Get Value       //input[@name='astmt_list_type']
    ${set_astmt_list_type} =    Get From List    ${astmt_list_type}    1
    ${material_type}    Run Keyword And Ignore Error    Get Value       //input[@name='material_type']
    ${set_material_type} =    Get From List    ${material_type}    1
    ${valuation_class}    Run Keyword And Ignore Error    Get Value       //input[@name='valuation_class']
    ${set_valuation_class} =    Get From List    ${valuation_class}    1
    ${e_comm_name_th}    Run Keyword And Ignore Error    Get Value       //input[@name='e_comm_name_th']
    ${set_e_comm_name_th} =    Get From List    ${e_comm_name_th}    1
    ${search_word}    Run Keyword And Ignore Error    Get Value       //input[@name='search_word']
    ${set_search_word} =    Get From List    ${search_word}    1
    ${search_remark}    Run Keyword And Ignore Error    Get Value       //input[@name='search_remark']
    ${set_search_remark} =    Get From List    ${search_remark}    1
    ${product_model}    Run Keyword And Ignore Error    Get Value       //input[@name='product_model']
    ${set_product_model} =    Get From List    ${product_model}    1
    ${brand_id}    Run Keyword And Ignore Error    Get Value    //input[@name='brand_id']
    ${set_brand_id} =    Get From List    ${brand_id}    1
    ${old_article}    Run Keyword And Ignore Error    Get Value    //input[@name='old_article']
    ${set_old_article} =    Get From List    ${old_article}    1
    ${repack}    Run Keyword And Ignore Error    Get Value       //input[@name='repack']
    ${set_repack} =    Get From List    ${repack}    1
    ${product_transform}    Run Keyword And Ignore Error    Get Value       //input[@name='product_transform']
    ${set_product_transform} =    Get From List    ${product_transform}    1
    ${country_of_region}    Run Keyword And Ignore Error    Get Value    //input[@name='country_of_region']
    ${set_country_of_region} =    Get From List    ${country_of_region}    1
    ${regions_origin}    Run Keyword And Ignore Error    Get Value    //input[@name='regions_origin']
    ${set_regions_origin} =    Get From List    ${regions_origin}    1
    ${hb_nonhb}    Run Keyword And Ignore Error    Get Value       //input[@name='hb_nonhb']
    ${set_hb_nonhb} =    Get From List    ${hb_nonhb}    1
    ${production}    Run Keyword And Ignore Error    Get Value    //input[@name='production']
    ${set_production} =    Get From List    ${production}    1
    ${tradmark}    Run Keyword And Ignore Error    Get Value       //input[@name='tradmark']
    ${set_tradmark} =    Get From List    ${tradmark}    1


    #ตัวแปรทั้งหมด
    ${row}=    Create Dictionary    article_no=${set_article_no}    vendor_no=${set_vendor_no}    name_th=${set_name_th}    name_en=${set_name_en}    
    ...    article_category=${set_article_category}    merc_category_MC2=${set_merc_category_MC2}    merc_category_MC5=${set_merc_category_MC5}    division_type=${set_division_type}    artl_statistics_grp=${set_artl_statistics_grp}    
    ...    astmt_list_type=${set_astmt_list_type}    material_type=${set_material_type}    valuation_class=${set_valuation_class}    e_comm_name_th=${set_e_comm_name_th}    search_word=${set_search_word}    search_remark=${set_search_remark}
    ...    product_model=${set_product_model}    brand_id=${set_brand_id}    old_article=${set_old_article}    repack=${set_repack}    product_transform=${set_product_transform}    country_of_region=${set_country_of_region}
    ...    regions_origin=${set_regions_origin}    hb_nonhb=${set_hb_nonhb}    production=${set_production}    tradmark=${set_tradmark}         
    
    #Field ชื่อ หรือ MC5 อาจจะมี " , " ใน Field นั้น อาจจะทำให้ column ใน file CSV คลาดเคลื่อน

    Append To File    ${value_art}    ${row['article_no']}, ${row['vendor_no']}, ${row['name_th']}, ${row['name_en']}, ${row['article_category']}, ${row['merc_category_MC2']}, ${row['merc_category_MC5']}, ${row['division_type']}, ${row['artl_statistics_grp']}, ${row['astmt_list_type']}, ${row['material_type']}, ${row['valuation_class']}, ${row['e_comm_name_th']}, ${row['search_word']}, ${row['search_remark']}, ${row['product_model']}, ${row['brand_id']}, ${row['old_article']}, ${row['repack']}, ${row['product_transform']}, ${row['country_of_region']}, ${row['regions_origin']}, ${row['hb_nonhb']}, ${row['production']}, ${row['tradmark']}\n