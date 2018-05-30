function ShowPic(imgurl)
{
var image=document.getElementById('carousel_photo')
image.src=imgurl;
}
        function prevSlide()
		{
			if(prevThumb-1<minSlide)
			{
				alert("已是第一张");
			}
			else{changeThumb(prevThumb-1)}
		}

		function nextSlide()
		{
			if(parseInt(prevThumb)+1>maxSlide)
			{
				alert("已是最后一张");
				//if(pageNo==maxPage)
				//{window.location=downPage}
				//else
				//{window.location=downPage}
			}
			else
			{
               changeThumb(parseInt(prevThumb)+1);
		    }
		}
		
		function changeThumb(thumbPos)
		{
			
			if(thumbPos>2)
			{
				row1="";
				count=0;
				for(var i=thumbPos-2;i<arrImages.length;i++)
                {
                if(count>5){break;}
                row1=row1+'<li><img src=\"'+arrImages_s[i]+'\" onclick=changeThumb("'+i+'") title=\"点击小图放大\" id="thumb'+i+'" style="background-color:#000000;padding:2px;cursor:pointer;" width="75" height="113"/></li>';
                count++
                }
			}
			else
			{
			    row1="";
				count=0;
				for(var i=arrPos;i<arrImages.length;i++)
                {
                if(count>5){break;}
                row1=row1+'<li><img src=\"'+arrImages_s[i]+'\" onclick=changeThumb("'+i+'") title=\"点击小图放大\" id="thumb'+i+'" style="background-color:#000000;padding:2px;cursor:pointer;" width="75" height="113"/></li>';
                count++
                }
			}
			changea();
			//document.getElementById('thumb'+prevThumb).style.border='2px solid #ffffff';
			document.getElementById('thumb'+thumbPos).style.border='2px solid #B80000';
			prevThumb=thumbPos;
			loadSlide(thumbPos);
		}
		function loadSlide(slidePos)
		{
			var tempImage=arrImages[slidePos];
			var image=document.getElementById('carousel_photo')
             image.src=tempImage;
		}
        function prevGroup()
		{
			    row1="";
				count=0;
				if(k==0)
				{
					k=parseInt(prevThumb);
				}
				if(k-3>=0)
		        {
				k=k-3;
		        }
				for(var i=k;i<arrImages.length;i++)
                {
                if(count>5){break;}
                row1=row1+'<li><img src=\"'+arrImages_s[i]+'\" onclick=changeThumb("'+i+'") title=\"点击小图放大\" id="thumb'+i+'" style="background-color:#000000;padding:2px;cursor:pointer;" width="75" height="113"/></li>';
                count++
                }
				changea();
				loadSlide(prevThumb);
		}
		function nextGroup()
		{
			    row1="";
				count=0;
				if(k==0)
				{
					k=parseInt(prevThumb);
				}
				if(k+3<arrImages.length)
				{
				k=k+3;
				}
				for(var i=k;i<arrImages.length;i++)
                {
                if(count>5){break;}
                row1=row1+'<li><img src=\"'+arrImages_s[i]+'\" onclick=changeThumb("'+i+'") title=\"点击小图放大\" id="thumb'+i+'" style="background-color:#000000;padding:2px;cursor:pointer;" width="75" height="113"/></li>';
                count++
                }
				changea();
				loadSlide(prevThumb);
		}
function changea(){
document.getElementById('samples_list').innerHTML=row1;
}
