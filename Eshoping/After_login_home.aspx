﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Afetr_login_MasterPage.master" AutoEventWireup="false" CodeFile="After_login_home.aspx.vb" Inherits="After_login_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 496px; background-color: #66FF99;">
    <!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
    <title>Amazing Slider</title>
    
    <!-- Insert to your webpage before the </head> -->
    <script src="sliderengine/jquery.js"></script>
    <script src="sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderengine/amazingslider-1.css">
    <script src="sliderengine/initslider-1.js"></script>
    <!-- End of head section HTML codes -->
    
    <style type="text/css">
        body, html {
        height: 100%;
        margin: 0;
        padding: 0;
        overflow: hidden;
        }
    </style>

</head>
<body>
    
    <!-- Insert to your webpage where you want to display the slider -->
    <div id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:100%;height:100%;margin:0 auto;">
        <div id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
                <li><img src="images/sr2.jpg" alt="sr2"  title="sr2" />
                </li>
                <li><img src="images/p.jpg" alt="p"  title="p" />
                </li>
                <li><img src="images/sr3.jpg" alt="sr3"  title="sr3" />
                </li>
                <li><img src="images/sr4.jpg" alt="sr4"  title="sr4" />
                </li>
            </ul>
            <ul class="amazingslider-thumbnails" style="display:none;">
                <li><img src="images/sr2-tn.jpg" alt="sr2" title="sr2" /></li>
                <li><img src="images/p-tn.jpg" alt="p" title="p" /></li>
                <li><img src="images/sr3-tn.jpg" alt="sr3" title="sr3" /></li>
                <li><img src="images/sr4-tn.jpg" alt="sr4" title="sr4" /></li>
            </ul>
        <div class="amazingslider-engine"><a href="http://amazingslider.com" title="Image Slider jQuery">Image Slider jQuery</a></div>
        </div>
    </div>
    <!-- End of body section HTML codes -->
    
</body>
</html>
    
    
    
    
    
    
    
    
    
    </div>
</asp:Content>

