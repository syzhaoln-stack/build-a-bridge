const body=document.body,button=document.querySelector('.menu-button'),scrim=document.querySelector('.scrim'),nav=document.querySelector('.book-nav');
function setNav(open){body.classList.toggle('nav-open',open);button?.setAttribute('aria-expanded',String(open));if(scrim)scrim.hidden=!open}
button?.addEventListener('click',()=>setNav(!body.classList.contains('nav-open')));scrim?.addEventListener('click',()=>setNav(false));
document.addEventListener('keydown',e=>{if(e.key==='Escape')setNav(false)});
const here=location.pathname.split('/').pop();nav?.querySelectorAll('a').forEach(a=>{if(a.getAttribute('href')===here)a.classList.add('active')});
const heading=document.querySelector('.article>h1');if(heading)document.title=`${heading.textContent}｜请把手弄脏`;
const number=Number.parseInt(here,10),prev=document.querySelector('#prev-chapter'),next=document.querySelector('#next-chapter');
if(number>1){prev.href=`${String(number-1).padStart(2,'0')}.html`;prev.textContent='← 上一章';prev.hidden=false}
if(number<15){next.href=`${String(number+1).padStart(2,'0')}.html`;next.textContent='下一章 →';next.hidden=false}
