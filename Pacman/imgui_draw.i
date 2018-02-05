#line 1 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"












#line 14 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"

#line 1 "c:\\biblioteki\\imgui-sfml\\imgui.h"








#pragma once


#line 1 "c:\\biblioteki\\imgui-sfml\\imconfig.h"






#pragma once


















































#line 1 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\system\\vector2.hpp"




























namespace sf
{





template <typename T>
class Vector2
{
public:

    
    
    
    
    
    
    Vector2();

    
    
    
    
    
    
    
    Vector2(T X, T Y);

    
    
    
    
    
    
    
    
    
    
    
    template <typename U>
    explicit Vector2(const Vector2<U>& vector);

    
    
    
    T x; 
    T y; 
};










template <typename T>
Vector2<T> operator -(const Vector2<T>& right);














template <typename T>
Vector2<T>& operator +=(Vector2<T>& left, const Vector2<T>& right);














template <typename T>
Vector2<T>& operator -=(Vector2<T>& left, const Vector2<T>& right);











template <typename T>
Vector2<T> operator +(const Vector2<T>& left, const Vector2<T>& right);











template <typename T>
Vector2<T> operator -(const Vector2<T>& left, const Vector2<T>& right);











template <typename T>
Vector2<T> operator *(const Vector2<T>& left, T right);











template <typename T>
Vector2<T> operator *(T left, const Vector2<T>& right);














template <typename T>
Vector2<T>& operator *=(Vector2<T>& left, T right);











template <typename T>
Vector2<T> operator /(const Vector2<T>& left, T right);














template <typename T>
Vector2<T>& operator /=(Vector2<T>& left, T right);













template <typename T>
bool operator ==(const Vector2<T>& left, const Vector2<T>& right);













template <typename T>
bool operator !=(const Vector2<T>& left, const Vector2<T>& right);

#line 1 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\system\\vector2.inl"


























template <typename T>
inline Vector2<T>::Vector2() :
x(0),
y(0)
{

}



template <typename T>
inline Vector2<T>::Vector2(T X, T Y) :
x(X),
y(Y)
{

}



template <typename T>
template <typename U>
inline Vector2<T>::Vector2(const Vector2<U>& vector) :
x(static_cast<T>(vector.x)),
y(static_cast<T>(vector.y))
{
}



template <typename T>
inline Vector2<T> operator -(const Vector2<T>& right)
{
    return Vector2<T>(-right.x, -right.y);
}



template <typename T>
inline Vector2<T>& operator +=(Vector2<T>& left, const Vector2<T>& right)
{
    left.x += right.x;
    left.y += right.y;

    return left;
}



template <typename T>
inline Vector2<T>& operator -=(Vector2<T>& left, const Vector2<T>& right)
{
    left.x -= right.x;
    left.y -= right.y;

    return left;
}



template <typename T>
inline Vector2<T> operator +(const Vector2<T>& left, const Vector2<T>& right)
{
    return Vector2<T>(left.x + right.x, left.y + right.y);
}



template <typename T>
inline Vector2<T> operator -(const Vector2<T>& left, const Vector2<T>& right)
{
    return Vector2<T>(left.x - right.x, left.y - right.y);
}



template <typename T>
inline Vector2<T> operator *(const Vector2<T>& left, T right)
{
    return Vector2<T>(left.x * right, left.y * right);
}



template <typename T>
inline Vector2<T> operator *(T left, const Vector2<T>& right)
{
    return Vector2<T>(right.x * left, right.y * left);
}



template <typename T>
inline Vector2<T>& operator *=(Vector2<T>& left, T right)
{
    left.x *= right;
    left.y *= right;

    return left;
}



template <typename T>
inline Vector2<T> operator /(const Vector2<T>& left, T right)
{
    return Vector2<T>(left.x / right, left.y / right);
}



template <typename T>
inline Vector2<T>& operator /=(Vector2<T>& left, T right)
{
    left.x /= right;
    left.y /= right;

    return left;
}



template <typename T>
inline bool operator ==(const Vector2<T>& left, const Vector2<T>& right)
{
    return (left.x == right.x) && (left.y == right.y);
}



template <typename T>
inline bool operator !=(const Vector2<T>& left, const Vector2<T>& right)
{
    return (left.x != right.x) || (left.y != right.y);
}
#line 251 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\system\\vector2.hpp"


typedef Vector2<int>          Vector2i;
typedef Vector2<unsigned int> Vector2u;
typedef Vector2<float>        Vector2f;

} 


#line 261 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\system\\vector2.hpp"









































#line 59 "c:\\biblioteki\\imgui-sfml\\imconfig.h"
#line 1 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\color.hpp"






























#line 1 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\export.hpp"






























#line 1 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"










































    
    
    
        
    #line 48 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"





















































#line 102 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"







    

#line 112 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"







    

        
        
        

        
        

            #pragma warning(disable: 4251)

        #line 131 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"

    
















#line 150 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"







#line 158 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"


















#line 177 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"

    
    
    
    













#line 196 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"





namespace sf
{
    
    
    

    
    typedef signed   char Int8;
    typedef unsigned char Uint8;

    
    typedef signed   short Int16;
    typedef unsigned short Uint16;

    
    typedef signed   int Int32;
    typedef unsigned int Uint32;

    
    
        typedef signed   __int64 Int64;
        typedef unsigned __int64 Uint64;
    


#line 227 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"

} 


#line 232 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\config.hpp"
#line 32 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\export.hpp"









#line 42 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\export.hpp"

    

#line 46 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\export.hpp"


#line 49 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\export.hpp"
#line 32 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\color.hpp"


namespace sf
{




class __declspec(dllimport) Color
{
public:

    
    
    
    
    
    
    
    Color();

    
    
    
    
    
    
    
    
    
    Color(Uint8 red, Uint8 green, Uint8 blue, Uint8 alpha = 255);

    
    
    
    
    
    
    explicit Color(Uint32 color);

    
    
    
    
    
    
    Uint32 toInteger() const;

    
    
    
    static const Color Black;       
    static const Color White;       
    static const Color Red;         
    static const Color Green;       
    static const Color Blue;        
    static const Color Yellow;      
    static const Color Magenta;     
    static const Color Cyan;        
    static const Color Transparent; 

    
    
    
    Uint8 r; 
    Uint8 g; 
    Uint8 b; 
    Uint8 a; 
};













__declspec(dllimport) bool operator ==(const Color& left, const Color& right);













__declspec(dllimport) bool operator !=(const Color& left, const Color& right);














__declspec(dllimport) Color operator +(const Color& left, const Color& right);














__declspec(dllimport) Color operator -(const Color& left, const Color& right);
















__declspec(dllimport) Color operator *(const Color& left, const Color& right);















__declspec(dllimport) Color& operator +=(Color& left, const Color& right);















__declspec(dllimport) Color& operator -=(Color& left, const Color& right);

















__declspec(dllimport) Color& operator *=(Color& left, const Color& right);

} 


#line 231 "c:\\biblioteki\\sfml-2.4.2-vs14\\include\\sfml\\graphics\\color.hpp"













































#line 60 "c:\\biblioteki\\imgui-sfml\\imconfig.h"
























#line 13 "c:\\biblioteki\\imgui-sfml\\imgui.h"
#line 14 "c:\\biblioteki\\imgui-sfml\\imgui.h"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"








#pragma once


#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"







#pragma once

#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"





















    
#line 24 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"






    
    

#line 34 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
        
            
        

#line 39 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
    #line 40 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 41 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"




#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"













#pragma once







































































































































#line 151 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"



#line 155 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"





























#line 185 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"


#line 188 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"

#line 190 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"





#line 196 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"



#line 200 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






#line 207 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"











#line 219 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"








#line 228 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"
#line 229 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"































































































































































































































































































































































































































































































#pragma region Input Buffer SAL 1 compatibility macros



























































































































































































































































































































































































































































































































































































































































































































































































#pragma endregion Input Buffer SAL 1 compatibility macros

















































































#line 1555 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






























#line 1586 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"
























#line 1611 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"












#line 1624 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






































#line 1663 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"















































































































#line 1775 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






































































































#line 1878 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"








































































































































































#line 2047 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"





































































































#line 2149 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"



















































































































































































































#line 2361 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"
extern "C" {




#line 2367 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"



































































































































































































































#line 2595 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    

    
    

#line 2634 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"









































































































































































































































#line 2868 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"









#line 2878 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"


    
    
#line 2883 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






#line 2890 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"
#line 2891 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






#line 2898 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"
#line 2899 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"











#line 2911 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"

































#line 2945 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"






















}
#line 2969 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"

#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"


















#pragma once


extern "C" {
#line 24 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"
















































































































































































































































#line 265 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"



#line 269 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"


















































































#line 352 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"


}
#line 356 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"

#line 358 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\concurrencysal.h"
#line 2971 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\sal.h"

#line 46 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"










#pragma once



#pragma pack(push, 8)


extern "C" {
#line 20 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"



#line 24 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"


    
    


        typedef unsigned int uintptr_t;
    #line 32 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"
#line 33 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"


    
    


        typedef char* va_list;
    #line 41 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"
#line 42 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"


    


#line 48 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"





#line 54 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"



#line 58 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"
    
    
#line 61 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"











#line 73 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"

    

    
    
    










































#line 122 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"


} 
#line 126 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"


    extern "C++"
    {
        template <typename _Ty>
        struct __vcrt_va_list_is_reference
        {
            enum : bool { __the_value = false };
        };

        template <typename _Ty>
        struct __vcrt_va_list_is_reference<_Ty&>
        {
            enum : bool { __the_value = true };
        };

        template <typename _Ty>
        struct __vcrt_va_list_is_reference<_Ty&&>
        {
            enum : bool { __the_value = true };
        };

        template <typename _Ty>
        void __vcrt_va_start_verify_argument_type() throw()
        {
            static_assert(!__vcrt_va_list_is_reference<_Ty>::__the_value, "va_start argument must not have reference type and must not be parenthesized");
        }
    } 

    





#line 162 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vadefs.h"

#pragma pack(pop)
#line 47 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"






    



    





















#line 80 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"

__pragma(pack(push, 8)) extern "C" {




    


        
    #line 91 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 92 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


















    

#line 113 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"

#line 115 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
        
    #line 117 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 118 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    

#line 123 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
        
    #line 125 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 126 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"





#line 132 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
    
    
#line 135 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"




    
#line 141 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"








    


#line 153 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"



#line 157 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
    
#line 159 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"




    
#line 165 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    
        
        
    

#line 173 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 174 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"










    typedef unsigned int     size_t;
    typedef int              ptrdiff_t;
    typedef int              intptr_t;
#line 188 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    typedef bool  __vcrt_bool;






#line 198 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"



    
#line 203 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    
#line 207 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    
#line 211 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"








    
        
    

#line 224 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 225 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"



#line 229 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
    
#line 231 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    extern "C++"
    {
        template <typename _CountofType, size_t _SizeOfArray>
        char (*__countof_helper( _CountofType (&_Array)[_SizeOfArray]))[_SizeOfArray];

        
    }


#line 243 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"






#line 250 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    
        
    





#line 261 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 262 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"



#line 266 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    
        
    


#line 274 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 275 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"


    void __cdecl __security_init_cookie(void);

    
        void __fastcall __security_check_cookie(  uintptr_t _StackCookie);
        __declspec(noreturn) void __cdecl __report_gsfailure(void);
    


#line 286 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 287 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"

extern uintptr_t __security_cookie;


    
    
    
#line 295 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"

} __pragma(pack(pop))

#line 299 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"
#line 11 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

__pragma(pack(push, 8)) extern "C" {









    

#line 25 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
        
    

#line 29 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"




    
#line 36 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    

#line 41 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
        
    

#line 45 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 46 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 50 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    
#line 52 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    


#line 58 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"





#line 64 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    
#line 66 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



    


#line 73 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 77 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    
#line 79 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"













    


        
    #line 97 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 98 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 102 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    
#line 104 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 108 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    
#line 110 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 114 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    
#line 116 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"









extern "C++"
{
    template<bool _Enable, typename _Ty>
    struct _CrtEnableIf;

    template<typename _Ty>
    struct _CrtEnableIf<true, _Ty>
    {
        typedef _Ty _Type;
    };
}
#line 137 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    typedef bool  __crt_bool;






#line 147 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"










    
#line 159 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



















    

#line 181 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
        
    #line 183 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 184 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 188 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    
#line 192 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"









    











        
    #line 215 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 216 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    
#line 220 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    
        
    

#line 227 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 228 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
















    __declspec(dllimport) void __cdecl _invalid_parameter(
          wchar_t const*,
          wchar_t const*,
          wchar_t const*,
                unsigned int,
                uintptr_t
        );
#line 252 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

__declspec(dllimport) void __cdecl _invalid_parameter_noinfo(void);
__declspec(dllimport) __declspec(noreturn) void __cdecl _invalid_parameter_noinfo_noreturn(void);

__declspec(noreturn)
__declspec(dllimport) void __cdecl _invoke_watson(
      wchar_t const* _Expression,
      wchar_t const* _FunctionName,
      wchar_t const* _FileName,
            unsigned int _LineNo,
            uintptr_t _Reserved);


    
        

    













#line 283 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 284 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
















#line 301 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    


        


    #line 310 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 311 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"









    






        
    #line 329 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 330 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    


        
    #line 337 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 338 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 342 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"













#line 356 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"















#line 372 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"





    
#line 379 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 383 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    

#line 388 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 389 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    


        


            
        #line 399 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    #line 400 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 401 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 405 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"





#line 411 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    


        



    #line 421 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 422 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    
        
    



#line 431 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

    
        
        
        
    



#line 441 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

    
        
              
        

#line 448 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    



#line 453 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

    
        
    



#line 461 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

    
        
    



#line 469 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 470 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    
#line 474 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"








typedef int                           errno_t;
typedef unsigned short                wint_t;
typedef unsigned short                wctype_t;
typedef long                          __time32_t;
typedef __int64                       __time64_t;

typedef struct __crt_locale_data_public
{
      unsigned short const* _locale_pctype;
      int _locale_mb_cur_max;
               unsigned int _locale_lc_codepage;
} __crt_locale_data_public;

typedef struct __crt_locale_pointers
{
    struct __crt_locale_data*    locinfo;
    struct __crt_multibyte_data* mbcinfo;
} __crt_locale_pointers;

typedef __crt_locale_pointers* _locale_t;

typedef struct _Mbstatet
{ 
    unsigned long _Wchar;
    unsigned short _Byte, _State;
} _Mbstatet;

typedef _Mbstatet mbstate_t;



#line 514 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



#line 518 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    


        typedef __time64_t time_t;
    #line 525 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 526 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



    
#line 531 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"


    typedef size_t rsize_t;
#line 535 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"










    

        










        










        










        










        










        










        










        










        










        















        















        
















    














#line 711 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 712 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"












































































    





































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 1787 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"

        
        
        
        

        

            


            


            


            


            


            


            


            


            



            



            


            


            


            


            


            


            


            


            


            


            



            



            



            


            



            




            

            




            

            




            

            




            

            




            

            




            

            




            

            




            

        











































#line 1977 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
    #line 1978 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"
#line 1979 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt.h"



} __pragma(pack(pop))
#line 13 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"

__pragma(pack(push, 8)) extern "C" {




    


        


            
        #line 27 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"
    #line 28 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"
#line 29 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"



















    
        
            
        

#line 54 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"
    

#line 57 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"
#line 58 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"






















































































































































    





#line 215 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"











__declspec(dllimport) unsigned int __cdecl _clearfp(void);

#pragma warning(push)
#pragma warning(disable: 4141)

 
__declspec(dllimport) unsigned int __cdecl _controlfp(
      unsigned int _NewValue,
      unsigned int _Mask
    );

#pragma warning(pop)


__declspec(dllimport) void __cdecl _set_controlfp(
      unsigned int _NewValue,
      unsigned int _Mask
    );


__declspec(dllimport) errno_t __cdecl _controlfp_s(
      unsigned int* _CurrentState,
           unsigned int  _NewValue,
           unsigned int  _Mask
    );


__declspec(dllimport) unsigned int __cdecl _statusfp(void);


__declspec(dllimport) void __cdecl _fpreset(void);



    
    __declspec(dllimport) void __cdecl _statusfp2(
          unsigned int* _X86Status,
          unsigned int* _SSE2Status
        );

#line 267 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"





__declspec(dllimport) unsigned int __cdecl _control87(
      unsigned int _NewValue,
      unsigned int _Mask
    );


    
    __declspec(dllimport) int __cdecl __control87_2(
               unsigned int  _NewValue,
               unsigned int  _Mask,
          unsigned int* _X86ControlWord,
          unsigned int* _Sse2ControlWord
        );
#line 286 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"


 
__declspec(dllimport) int* __cdecl __fpecode(void);



 
__declspec(dllimport) int __cdecl __fpe_flt_rounds(void);












  __declspec(dllimport) double __cdecl _copysign(  double _Number,   double _Sign);
  __declspec(dllimport) double __cdecl _chgsign(  double _X);
  __declspec(dllimport) double __cdecl _scalb(  double _X,   long _Y);
  __declspec(dllimport) double __cdecl _logb(  double _X);
  __declspec(dllimport) double __cdecl _nextafter(  double _X,   double _Y);
  __declspec(dllimport) int    __cdecl _finite(  double _X);
  __declspec(dllimport) int    __cdecl _isnan(  double _X);
  __declspec(dllimport) int    __cdecl _fpclass(  double _X);














    
    
    

    
    __declspec(dllimport) void __cdecl fpreset(void);

    
    

    
    

    
    
    

    
    
    
    
    
    
    

    
    
    

    
    
    
    
    

    
    
    
    

    

    
    
    
    
    
    

    
    
    
    

    
    
    
    
    
    

    
    
    
    

    

#line 398 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\float.h"



} __pragma(pack(pop))
#line 15 "c:\\biblioteki\\imgui-sfml\\imgui.h"
#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\stdarg.h"







#pragma once


#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"










































































































































































































































































































#line 12 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\stdarg.h"

__pragma(pack(push, 8)) extern "C" {










} __pragma(pack(pop))
#line 16 "c:\\biblioteki\\imgui-sfml\\imgui.h"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stddef.h"







#pragma once




__pragma(pack(push, 8)) extern "C" {




    namespace std
    {
        typedef decltype(__nullptr) nullptr_t;
    }

    using ::std::nullptr_t;
#line 25 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stddef.h"





    __declspec(dllimport) int* __cdecl _errno(void);
    

    __declspec(dllimport) errno_t __cdecl _set_errno(  int _Value);
    __declspec(dllimport) errno_t __cdecl _get_errno(  int* _Value);

#line 37 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stddef.h"









#line 47 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stddef.h"
    
#line 49 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stddef.h"

__declspec(dllimport) extern unsigned long  __cdecl __threadid(void);

__declspec(dllimport) extern uintptr_t __cdecl __threadhandle(void);



} __pragma(pack(pop))
#line 17 "c:\\biblioteki\\imgui-sfml\\imgui.h"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"







#pragma once



#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"










#pragma once


#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memcpy_s.h"







#pragma once


#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\errno.h"







#pragma once




__pragma(pack(push, 8)) extern "C" {




    __declspec(dllimport) int* __cdecl _errno(void);
    

    __declspec(dllimport) errno_t __cdecl _set_errno(  int _Value);
    __declspec(dllimport) errno_t __cdecl _get_errno(  int* _Value);

    __declspec(dllimport) unsigned long* __cdecl __doserrno(void);
    

    __declspec(dllimport) errno_t __cdecl _set_doserrno(  unsigned long _Value);
    __declspec(dllimport) errno_t __cdecl _get_doserrno(  unsigned long * _Value);
#line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\errno.h"










































    
    
    
    
    
#line 78 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\errno.h"






    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
#line 126 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\errno.h"



} __pragma(pack(pop))
#line 12 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memcpy_s.h"
#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime_string.h"







#pragma once

#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"










































































































































































































































































































#line 11 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime_string.h"



__pragma(pack(push, 8)) extern "C" {



 
 void const* __cdecl memchr(
      void const* _Buf,
                                 int         _Val,
                                 size_t      _MaxCount
    );

 
int __cdecl memcmp(
      void const* _Buf1,
      void const* _Buf2,
                         size_t      _Size
    );


 

#line 40 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime_string.h"
void* __cdecl memcpy(
      void* _Dst,
            void const* _Src,
                               size_t      _Size
    );


 void* __cdecl memmove(
      void*       _Dst,
            void const* _Src,
                                   size_t      _Size
    );

 

#line 60 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime_string.h"
void* __cdecl memset(
      void*  _Dst,
                               int    _Val,
                               size_t _Size
    );

 
 char const* __cdecl strchr(
      char const* _Str,
        int         _Val
    );

 
 char const* __cdecl strrchr(
      char const* _Str,
        int         _Ch
    );

   
 char const* __cdecl strstr(
      char const* _Str,
      char const* _SubStr
    );

 

 wchar_t const* __cdecl wcschr(
      wchar_t const* _Str,
        wchar_t        _Ch
    );

 
 wchar_t const* __cdecl wcsrchr(
      wchar_t const* _Str,
        wchar_t        _Ch
    );

   

 wchar_t const* __cdecl wcsstr(
      wchar_t const* _Str,
      wchar_t const* _SubStr
    );



} __pragma(pack(pop))

#line 109 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime_string.h"
#line 13 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memcpy_s.h"

__pragma(pack(push, 8)) extern "C" {


    
#line 19 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memcpy_s.h"














     
    
    static __inline errno_t __cdecl memcpy_s(
          void*       const _Destination,
                                                              rsize_t     const _DestinationSize,
                                 void const* const _Source,
                                                              rsize_t     const _SourceSize
        )
    {
        if (_SourceSize == 0)
        {
            return 0;
        }

        { int _Expr_val=!!(_Destination != 0); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
        if (_Source == 0 || _DestinationSize < _SourceSize)
        {
            memset(_Destination, 0, _DestinationSize);

            { int _Expr_val=!!(_Source != 0); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
            { int _Expr_val=!!(_DestinationSize >= _SourceSize); if (!(_Expr_val)) { (*_errno()) = 34; _invalid_parameter_noinfo(); return 34; } };

            
            return 22;
        }

        memcpy(_Destination, _Source, _SourceSize);
        return 0;
    }

    
    static __inline errno_t __cdecl memmove_s(
          void*       const _Destination,
                                                              rsize_t     const _DestinationSize,
                                 void const* const _Source,
                                                              rsize_t     const _SourceSize
        )
    {
        if (_SourceSize == 0)
        {
            return 0;
        }

        { int _Expr_val=!!(_Destination != 0); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
        { int _Expr_val=!!(_Source != 0); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
        { int _Expr_val=!!(_DestinationSize >= _SourceSize); if (!(_Expr_val)) { (*_errno()) = 34; _invalid_parameter_noinfo(); return 34; } };

        memmove(_Destination, _Source, _SourceSize);
        return 0;
    }

#line 85 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memcpy_s.h"



} __pragma(pack(pop))
#line 15 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"




__pragma(pack(push, 8)) extern "C" {



 
__declspec(dllimport) int __cdecl _memicmp(
      void const* _Buf1,
      void const* _Buf2,
                             size_t      _Size
    );

 
__declspec(dllimport) int __cdecl _memicmp_l(
      void const* _Buf1,
      void const* _Buf2,
                             size_t      _Size,
                         _locale_t   _Locale
    );





    












#line 56 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"

    












#line 71 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"

#line 73 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"





    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_memccpy" ". See online help for details."))
    __declspec(dllimport) void* __cdecl memccpy(
          void*       _Dst,
            void const* _Src,
                                   int         _Val,
                                   size_t      _Size
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_memicmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl memicmp(
          void const* _Buf1,
          void const* _Buf2,
                                 size_t      _Size
        );

#line 94 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"





    extern "C++"  
    inline void* __cdecl memchr(
          void*  _Pv,
                              int    _C,
                              size_t _N
        )
    {
        void const* const _Pvc = _Pv;
        return const_cast<void*>(memchr(_Pvc, _C, _N));
    }

#line 111 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"



} __pragma(pack(pop))

#line 117 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_memory.h"
#line 13 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"








#pragma once






__pragma(pack(push, 8)) extern "C" {










    
    __declspec(dllimport) errno_t __cdecl wcscat_s(
          wchar_t* _Destination,
          rsize_t _SizeInWords,
          wchar_t const* _Source
        );

    
    __declspec(dllimport) errno_t __cdecl wcscpy_s(
          wchar_t* _Destination,
          rsize_t _SizeInWords,
          wchar_t const* _Source
        );

    
    __declspec(dllimport) errno_t __cdecl wcsncat_s(
          wchar_t*       _Destination,
                                     rsize_t        _SizeInWords,
               wchar_t const* _Source,
                                     rsize_t        _MaxCount
        );

    
    __declspec(dllimport) errno_t __cdecl wcsncpy_s(
          wchar_t*       _Destination,
                                  rsize_t        _SizeInWords,
            wchar_t const* _Source,
                                  rsize_t        _MaxCount
        );

     
    __declspec(dllimport) wchar_t* __cdecl wcstok_s(
                          wchar_t*       _String,
                                 wchar_t const* _Delimiter,
            wchar_t**      _Context
        );

#line 65 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"











#line 77 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 
__declspec(dllimport) __declspec(allocator) wchar_t* __cdecl _wcsdup(
      wchar_t const* _String
    );



#line 86 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"



extern "C++" { template <size_t _Size> inline errno_t __cdecl wcscat_s(wchar_t (&_Destination)[_Size],   wchar_t const* _Source) throw() { return wcscat_s(_Destination, _Size, _Source); } }
#line 94 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"



#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
     __declspec(dllimport) wchar_t* __cdecl wcscat( wchar_t *_Destination,  wchar_t const* _Source);
#line 105 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
#pragma warning(pop)
#line 107 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 
__declspec(dllimport) int __cdecl wcscmp(
      wchar_t const* _String1,
      wchar_t const* _String2
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcscpy_s(wchar_t (&_Destination)[_Size],   wchar_t const* _Source) throw() { return wcscpy_s(_Destination, _Size, _Source); } }
#line 119 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
 __declspec(dllimport) wchar_t* __cdecl wcscpy( wchar_t *_Destination,  wchar_t const* _Source);
#line 128 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
#pragma warning(pop)

 
__declspec(dllimport) size_t __cdecl wcscspn(
      wchar_t const* _String,
      wchar_t const* _Control
    );

 
__declspec(dllimport) size_t __cdecl wcslen(
      wchar_t const* _String
    );

 

#line 146 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

#line 150 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
__declspec(dllimport) size_t __cdecl wcsnlen(
      wchar_t const* _Source,
                            size_t         _MaxCount
    );



     
    
#line 162 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
    
#line 166 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
    static __inline size_t __cdecl wcsnlen_s(
          wchar_t const* _Source,
                                size_t         _MaxCount
        )
    {
        return (_Source == 0) ? 0 : wcsnlen(_Source, _MaxCount);
    }

#line 175 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsncat_s(  wchar_t (&_Destination)[_Size],   wchar_t const* _Source,   size_t _Count) throw() { return wcsncat_s(_Destination, _Size, _Source, _Count); } }
#line 182 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl wcsncat(  wchar_t *_Destination,   wchar_t const* _Source,   size_t _Count);
#line 190 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 
__declspec(dllimport) int __cdecl wcsncmp(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsncpy_s(wchar_t (&_Destination)[_Size],   wchar_t const* _Source,   size_t _Count) throw() { return wcsncpy_s(_Destination, _Size, _Source, _Count); } }
#line 204 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl wcsncpy(    wchar_t *_Destination,   wchar_t const* _Source,   size_t _Count);
#line 212 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 
__declspec(dllimport) wchar_t const* __cdecl wcspbrk(
      wchar_t const* _String,
      wchar_t const* _Control
    );

 
__declspec(dllimport) size_t __cdecl wcsspn(
      wchar_t const* _String,
      wchar_t const* _Control
    );

  
__declspec(dllimport) wchar_t* __cdecl wcstok(
                          wchar_t*       _String,
                                 wchar_t const* _Delimiter,
        wchar_t**      _Context
    );



    

#line 237 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
        



    #line 242 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

    #pragma warning(push)
    #pragma warning(disable: 4141 4996) 

      
    static __inline wchar_t* __cdecl _wcstok(
          wchar_t*       const _String,
                 wchar_t const* const _Delimiter
        )
    {
        return wcstok(_String, _Delimiter, 0);
    }

    

#line 258 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

    
        extern "C++"   __declspec(deprecated("wcstok has been changed to conform with the ISO C standard, " "adding an extra context parameter. To use the legacy Microsoft " "wcstok, define _CRT_NON_CONFORMING_WCSTOK."))
        inline wchar_t* __cdecl wcstok(
              wchar_t*       _String,
                     wchar_t const* _Delimiter
            ) throw()
        {
            return wcstok(_String, _Delimiter, 0);
        }
    #line 269 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

    #pragma warning(pop)

#line 273 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"



 
  
__declspec(dllimport) wchar_t* __cdecl _wcserror(
      int _ErrorNumber
    );


__declspec(dllimport) errno_t __cdecl _wcserror_s(
      wchar_t* _Buffer,
                                  size_t   _SizeInWords,
                                  int      _ErrorNumber
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcserror_s(wchar_t (&_Buffer)[_Size],   int _Error) throw() { return _wcserror_s(_Buffer, _Size, _Error); } }
#line 294 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 
 
  
__declspec(dllimport) wchar_t* __cdecl __wcserror(
      wchar_t const* _String
    );

 __declspec(dllimport) errno_t __cdecl __wcserror_s(
      wchar_t*       _Buffer,
                                  size_t         _SizeInWords,
                                wchar_t const* _ErrorMessage
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl __wcserror_s(wchar_t (&_Buffer)[_Size],   wchar_t const* _ErrorMessage) throw() { return __wcserror_s(_Buffer, _Size, _ErrorMessage); } }
#line 313 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

  __declspec(dllimport) int __cdecl _wcsicmp(
      wchar_t const* _String1,
      wchar_t const* _String2
    );

  __declspec(dllimport) int __cdecl _wcsicmp_l(
        wchar_t const* _String1,
        wchar_t const* _String2,
      _locale_t      _Locale
    );

  __declspec(dllimport) int __cdecl _wcsnicmp(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount
    );

  __declspec(dllimport) int __cdecl _wcsnicmp_l(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount,
                        _locale_t      _Locale
    );

 __declspec(dllimport) errno_t __cdecl _wcsnset_s(
      wchar_t* _Destination,
                                 size_t   _SizeInWords,
                                 wchar_t  _Value,
                                 size_t   _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsnset_s(  wchar_t (&_Destination)[_Size],   wchar_t _Value,   size_t _MaxCount) throw() { return _wcsnset_s(_Destination, _Size, _Value, _MaxCount); } }
#line 351 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl _wcsnset(  wchar_t *_String,   wchar_t _Value,   size_t _MaxCount);
#line 359 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

__declspec(dllimport) wchar_t* __cdecl _wcsrev(
      wchar_t* _String
    );

 __declspec(dllimport) errno_t __cdecl _wcsset_s(
      wchar_t* _Destination,
                                 size_t   _SizeInWords,
                                 wchar_t  _Value
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsset_s(  wchar_t (&_String)[_Size],   wchar_t _Value) throw() { return _wcsset_s(_String, _Size, _Value); } }
#line 375 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl _wcsset(  wchar_t *_String,   wchar_t _Value);
#line 382 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) errno_t __cdecl _wcslwr_s(
      wchar_t* _String,
                                 size_t   _SizeInWords
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcslwr_s(  wchar_t (&_String)[_Size]) throw() { return _wcslwr_s(_String, _Size); } }
#line 392 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl _wcslwr( wchar_t *_String);
#line 397 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"


__declspec(dllimport) errno_t __cdecl _wcslwr_s_l(
      wchar_t*  _String,
                                 size_t    _SizeInWords,
                             _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcslwr_s_l(  wchar_t (&_String)[_Size],   _locale_t _Locale) throw() { return _wcslwr_s_l(_String, _Size, _Locale); } }
#line 410 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl _wcslwr_l(  wchar_t *_String,   _locale_t _Locale);
#line 417 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"


__declspec(dllimport) errno_t __cdecl _wcsupr_s(
      wchar_t* _String,
                          size_t   _Size
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsupr_s(  wchar_t (&_String)[_Size]) throw() { return _wcsupr_s(_String, _Size); } }
#line 428 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl _wcsupr( wchar_t *_String);
#line 433 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"


__declspec(dllimport) errno_t __cdecl _wcsupr_s_l(
      wchar_t*  _String,
                          size_t    _Size,
                      _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsupr_s_l(  wchar_t (&_String)[_Size],   _locale_t _Locale) throw() { return _wcsupr_s_l(_String, _Size, _Locale); } }
#line 446 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 __declspec(dllimport) wchar_t* __cdecl _wcsupr_l(  wchar_t *_String,   _locale_t _Locale);
#line 453 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

 

__declspec(dllimport) size_t __cdecl wcsxfrm(
        wchar_t*       _Destination,
                                         wchar_t const* _Source,
                size_t         _MaxCount
    );

 

__declspec(dllimport) size_t __cdecl _wcsxfrm_l(
        wchar_t*       _Destination,
                                         wchar_t const* _Source,
                size_t         _MaxCount,
                                       _locale_t      _Locale
    );

 
__declspec(dllimport) int __cdecl wcscoll(
      wchar_t const* _String1,
      wchar_t const* _String2
    );

 
__declspec(dllimport) int __cdecl _wcscoll_l(
        wchar_t const* _String1,
        wchar_t const* _String2,
      _locale_t      _Locale
    );

 
__declspec(dllimport) int __cdecl _wcsicoll(
      wchar_t const* _String1,
      wchar_t const* _String2
    );

 
__declspec(dllimport) int __cdecl _wcsicoll_l(
        wchar_t const* _String1,
        wchar_t const* _String2,
      _locale_t      _Locale
    );

 
__declspec(dllimport) int __cdecl _wcsncoll(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount
    );

 
__declspec(dllimport) int __cdecl _wcsncoll_l(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount,
                        _locale_t      _Locale
    );

 
__declspec(dllimport) int __cdecl _wcsnicoll(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount
    );

 
__declspec(dllimport) int __cdecl _wcsnicoll_l(
      wchar_t const* _String1,
      wchar_t const* _String2,
                            size_t         _MaxCount,
                        _locale_t      _Locale
    );









extern "C++" {

     
    
    inline wchar_t* __cdecl wcschr(  wchar_t* _String, wchar_t _C)
    {
        return const_cast<wchar_t*>(wcschr(static_cast<wchar_t const*>(_String), _C));
    }

     
    inline wchar_t* __cdecl wcspbrk(  wchar_t* _String,   wchar_t const* _Control)
    {
        return const_cast<wchar_t*>(wcspbrk(static_cast<wchar_t const*>(_String), _Control));
    }

     
    inline wchar_t* __cdecl wcsrchr(  wchar_t* _String,   wchar_t _C)
    {
        return const_cast<wchar_t*>(wcsrchr(static_cast<wchar_t const*>(_String), _C));
    }

       
    
    inline wchar_t* __cdecl wcsstr(  wchar_t* _String,   wchar_t const*_SubStr)
    {
        return const_cast<wchar_t*>(wcsstr(static_cast<wchar_t const*>(_String), _SubStr));
    }

}
#line 565 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"









    


#line 578 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsdup" ". See online help for details."))
    __declspec(dllimport) wchar_t* __cdecl wcsdup(
          wchar_t const* _String
        );

    

#line 587 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"

    
    

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsicmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl wcsicmp(
          wchar_t const* _String1,
          wchar_t const* _String2
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsnicmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl wcsnicmp(
          wchar_t const* _String1,
          wchar_t const* _String2,
                                size_t         _MaxCount
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsnset" ". See online help for details."))
     
    __declspec(dllimport) wchar_t* __cdecl wcsnset(
          wchar_t* _String,
                                  wchar_t  _Value,
                                  size_t   _MaxCount
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsrev" ". See online help for details."))
     
    __declspec(dllimport) wchar_t* __cdecl wcsrev(
          wchar_t* _String
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsset" ". See online help for details."))
     
    __declspec(dllimport) wchar_t* __cdecl wcsset(
          wchar_t* _String,
               wchar_t  _Value
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcslwr" ". See online help for details."))
     
    __declspec(dllimport) wchar_t* __cdecl wcslwr(
          wchar_t* _String
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsupr" ". See online help for details."))
     
    __declspec(dllimport) wchar_t* __cdecl wcsupr(
          wchar_t* _String
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsicoll" ". See online help for details."))
    __declspec(dllimport) int __cdecl wcsicoll(
          wchar_t const* _String1,
          wchar_t const* _String2
        );

#line 644 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"



} __pragma(pack(pop))

#line 650 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstring.h"
#line 14 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"




__pragma(pack(push, 8)) extern "C" {







    
    __declspec(dllimport) errno_t __cdecl strcpy_s(
          char*       _Destination,
                                  rsize_t     _SizeInBytes,
                                char const* _Source
        );

    
    __declspec(dllimport) errno_t __cdecl strcat_s(
          char*       _Destination,
                                     rsize_t     _SizeInBytes,
                                   char const* _Source
        );

    
    __declspec(dllimport) errno_t __cdecl strerror_s(
          char*  _Buffer,
                                  size_t _SizeInBytes,
                                  int    _ErrorNumber);

    
    __declspec(dllimport) errno_t __cdecl strncat_s(
          char*       _Destination,
                                     rsize_t     _SizeInBytes,
               char const* _Source,
                                     rsize_t     _MaxCount
        );

    
    __declspec(dllimport) errno_t __cdecl strncpy_s(
          char*       _Destination,
                                  rsize_t     _SizeInBytes,
            char const* _Source,
                                  rsize_t     _MaxCount
        );

     
    __declspec(dllimport) char*  __cdecl strtok_s(
                          char*       _String,
                                 char const* _Delimiter,
            char**      _Context
        );

#line 70 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

__declspec(dllimport) void* __cdecl _memccpy(
      void*       _Dst,
                                   void const* _Src,
                                   int         _Val,
                                   size_t      _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl strcat_s(char (&_Destination)[_Size],   char const* _Source) throw() { return strcat_s(_Destination, _Size, _Source); } }
#line 83 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"



#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
      char* __cdecl strcat( char *_Destination,  char const* _Source);
#line 94 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
#pragma warning(pop)

#line 97 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
int __cdecl strcmp(
      char const* _Str1,
      char const* _Str2
    );

 
__declspec(dllimport) int __cdecl _strcmpi(
      char const* _String1,
      char const* _String2
    );

 
__declspec(dllimport) int __cdecl strcoll(
      char const* _String1,
      char const* _String2
    );

 
__declspec(dllimport) int __cdecl _strcoll_l(
        char const* _String1,
        char const* _String2,
      _locale_t   _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl strcpy_s(  char (&_Destination)[_Size],   char const* _Source) throw() { return strcpy_s(_Destination, _Size, _Source); } }
#line 128 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
  char* __cdecl strcpy( char *_Destination,  char const* _Source);
#line 137 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
#pragma warning(pop)

 
__declspec(dllimport) size_t __cdecl strcspn(
      char const* _Str,
      char const* _Control
    );




#line 149 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
__declspec(dllimport) __declspec(allocator) char* __cdecl _strdup(
      char const* _Source
    );



#line 158 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
 
  
__declspec(dllimport) char*  __cdecl _strerror(
      char const* _ErrorMessage
    );


__declspec(dllimport) errno_t __cdecl _strerror_s(
      char*       _Buffer,
                              size_t      _SizeInBytes,
                        char const* _ErrorMessage
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strerror_s(char (&_Buffer)[_Size],   char const* _ErrorMessage) throw() { return _strerror_s(_Buffer, _Size, _ErrorMessage); } }
#line 178 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
  
__declspec(dllimport) char* __cdecl strerror(
      int _ErrorMessage
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl strerror_s(char (&_Buffer)[_Size],   int _ErrorMessage) throw() { return strerror_s(_Buffer, _Size, _ErrorMessage); } }
#line 190 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
__declspec(dllimport) int __cdecl _stricmp(
      char const* _String1,
      char const* _String2
    );

 
__declspec(dllimport) int __cdecl _stricoll(
      char const* _String1,
      char const* _String2
    );

 
__declspec(dllimport) int __cdecl _stricoll_l(
        char const* _String1,
        char const* _String2,
      _locale_t   _Locale
    );

 
__declspec(dllimport) int __cdecl _stricmp_l(
        char const* _String1,
        char const* _String2,
      _locale_t   _Locale
    );

 
size_t __cdecl strlen(
      char const* _Str
    );


__declspec(dllimport) errno_t __cdecl _strlwr_s(
      char*  _String,
                          size_t _Size
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strlwr_s(  char (&_String)[_Size]) throw() { return _strlwr_s(_String, _Size); } }
#line 232 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl _strlwr( char *_String);
#line 237 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"


__declspec(dllimport) errno_t __cdecl _strlwr_s_l(
      char*     _String,
                          size_t    _Size,
                      _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strlwr_s_l(  char (&_String)[_Size],   _locale_t _Locale) throw() { return _strlwr_s_l(_String, _Size, _Locale); } }
#line 250 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl _strlwr_l(  char *_String,   _locale_t _Locale);
#line 257 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

extern "C++" { template <size_t _Size> inline errno_t __cdecl strncat_s(  char (&_Destination)[_Size],   char const* _Source,   size_t _Count) throw() { return strncat_s(_Destination, _Size, _Source, _Count); } }
#line 264 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl strncat(  char *_Destination,   char const* _Source,   size_t _Count);
#line 272 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
__declspec(dllimport) int __cdecl strncmp(
      char const* _Str1,
      char const* _Str2,
                            size_t      _MaxCount
    );

 
__declspec(dllimport) int __cdecl _strnicmp(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount
    );

 
__declspec(dllimport) int __cdecl _strnicmp_l(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount,
                        _locale_t   _Locale
    );

 
__declspec(dllimport) int __cdecl _strnicoll(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount
    );

 
__declspec(dllimport) int __cdecl _strnicoll_l(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount,
                        _locale_t   _Locale
    );

 
__declspec(dllimport) int __cdecl _strncoll(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount
    );

 
__declspec(dllimport) int __cdecl _strncoll_l(
      char const* _String1,
      char const* _String2,
                            size_t      _MaxCount,
                        _locale_t   _Locale
    );

__declspec(dllimport) size_t __cdecl __strncnt(
      char const* _String,
                         size_t      _Count
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl strncpy_s(char (&_Destination)[_Size],   char const* _Source,   size_t _Count) throw() { return strncpy_s(_Destination, _Size, _Source, _Count); } }
#line 336 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl strncpy(    char *_Destination,   char const* _Source,   size_t _Count);
#line 344 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 

#line 350 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

#line 354 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
__declspec(dllimport) size_t __cdecl strnlen(
      char const* _String,
                            size_t      _MaxCount
    );



     
    
#line 366 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
    
#line 370 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
    static __inline size_t __cdecl strnlen_s(
          char const* _String,
                                size_t      _MaxCount
        )
    {
        return _String == 0 ? 0 : strnlen(_String, _MaxCount);
    }

#line 379 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"


__declspec(dllimport) errno_t __cdecl _strnset_s(
      char*  _String,
                                 size_t _SizeInBytes,
                                 int    _Value,
                                 size_t _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strnset_s(  char (&_Destination)[_Size],   int _Value,   size_t _Count) throw() { return _strnset_s(_Destination, _Size, _Value, _Count); } }
#line 394 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl _strnset(  char *_Destination,   int _Value,   size_t _Count);
#line 402 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
__declspec(dllimport) char const* __cdecl strpbrk(
      char const* _Str,
      char const* _Control
    );

__declspec(dllimport) char* __cdecl _strrev(
      char* _Str
    );


__declspec(dllimport) errno_t __cdecl _strset_s(
      char*  _Destination,
                                     size_t _DestinationSize,
                                     int    _Value
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strset_s(  char (&_Destination)[_Size],   int _Value) throw() { return _strset_s(_Destination, _Size, _Value); } }
#line 425 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

  char* __cdecl _strset( char *_Destination,  int _Value);
#line 431 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 
__declspec(dllimport) size_t __cdecl strspn(
      char const* _Str,
      char const* _Control
    );

  
__declspec(dllimport) char* __cdecl strtok(
      char*       _String,
             char const* _Delimiter
    );


__declspec(dllimport) errno_t __cdecl _strupr_s(
      char*  _String,
                          size_t _Size
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strupr_s(  char (&_String)[_Size]) throw() { return _strupr_s(_String, _Size); } }
#line 454 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl _strupr( char *_String);
#line 459 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"


__declspec(dllimport) errno_t __cdecl _strupr_s_l(
      char*     _String,
                          size_t    _Size,
                      _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strupr_s_l(  char (&_String)[_Size],   _locale_t _Locale) throw() { return _strupr_s_l(_String, _Size, _Locale); } }
#line 472 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 __declspec(dllimport) char* __cdecl _strupr_l(  char *_String,   _locale_t _Locale);
#line 479 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

 

__declspec(dllimport) size_t __cdecl strxfrm(
        char*       _Destination,
                                         char const* _Source,
                 size_t      _MaxCount
    );

 

__declspec(dllimport) size_t __cdecl _strxfrm_l(
        char*       _Destination,
                                         char const* _Source,
                 size_t      _MaxCount,
                                       _locale_t   _Locale
    );




extern "C++"
{
     
    inline char* __cdecl strchr(  char* const _String,   int const _Ch)
    {
        return const_cast<char*>(strchr(static_cast<char const*>(_String), _Ch));
    }

     
    inline char* __cdecl strpbrk(  char* const _String,   char const* const _Control)
    {
        return const_cast<char*>(strpbrk(static_cast<char const*>(_String), _Control));
    }

     
    inline char* __cdecl strrchr(  char* const _String,   int const _Ch)
    {
        return const_cast<char*>(strrchr(static_cast<char const*>(_String), _Ch));
    }

       
    inline char* __cdecl strstr(  char* const _String,   char const* const _SubString)
    {
        return const_cast<char*>(strstr(static_cast<char const*>(_String), _SubString));
    }
}
#line 527 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"





    


#line 536 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strdup" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strdup(
          char const* _String
        );

    

#line 545 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"

    
      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strcmpi" ". See online help for details."))
    __declspec(dllimport) int __cdecl strcmpi(
          char const* _String1,
          char const* _String2
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_stricmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl stricmp(
          char const* _String1,
          char const* _String2
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strlwr" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strlwr(
          char* _String
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strnicmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl strnicmp(
          char const* _String1,
          char const* _String2,
                                size_t      _MaxCount
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strnset" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strnset(
          char*  _String,
                                  int    _Value,
                                  size_t _MaxCount
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strrev" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strrev(
          char* _String
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strset" ". See online help for details."))
    char* __cdecl strset(
          char* _String,
               int   _Value);

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strupr" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strupr(
          char* _String
        );

#line 594 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"



} __pragma(pack(pop))

#line 600 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\string.h"
#line 18 "c:\\biblioteki\\imgui-sfml\\imgui.h"






#line 25 "c:\\biblioteki\\imgui-sfml\\imgui.h"



#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\assert.h"









#line 11 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\assert.h"



__pragma(pack(push, 8)) extern "C" {











    __declspec(dllimport) void __cdecl _wassert(
          wchar_t const* _Message,
          wchar_t const* _File,
            unsigned       _Line
        );

    




#line 38 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\assert.h"



} __pragma(pack(pop))
#line 29 "c:\\biblioteki\\imgui-sfml\\imgui.h"

#line 31 "c:\\biblioteki\\imgui-sfml\\imgui.h"




#line 36 "c:\\biblioteki\\imgui-sfml\\imgui.h"

#line 38 "c:\\biblioteki\\imgui-sfml\\imgui.h"




#line 43 "c:\\biblioteki\\imgui-sfml\\imgui.h"


struct ImDrawChannel;               
struct ImDrawCmd;                   
struct ImDrawData;                  
struct ImDrawList;                  
struct ImDrawVert;                  
struct ImFont;                      
struct ImFontAtlas;                 
struct ImFontConfig;                
struct ImColor;                     
struct ImGuiIO;                     
struct ImGuiOnceUponAFrame;         
struct ImGuiStorage;                
struct ImGuiStyle;                  
struct ImGuiTextFilter;             
struct ImGuiTextBuffer;             
struct ImGuiTextEditCallbackData;   
struct ImGuiSizeConstraintCallbackData;
struct ImGuiListClipper;            
struct ImGuiContext;                


typedef unsigned int ImU32;         
typedef unsigned int ImGuiID;       
typedef unsigned short ImWchar;     
typedef void* ImTextureID;          
typedef int ImGuiCol;               
typedef int ImGuiStyleVar;          
typedef int ImGuiKey;               
typedef int ImGuiColorEditMode;     
typedef int ImGuiMouseCursor;       
typedef int ImGuiWindowFlags;       
typedef int ImGuiSetCond;           
typedef int ImGuiInputTextFlags;    
typedef int ImGuiSelectableFlags;   
typedef int ImGuiTreeNodeFlags;     
typedef int (*ImGuiTextEditCallback)(ImGuiTextEditCallbackData *data);
typedef void (*ImGuiSizeConstraintCallback)(ImGuiSizeConstraintCallbackData* data);





struct ImVec2
{
    float x, y;
    ImVec2() { x = y = 0.0f; }
    ImVec2(float _x, float _y) { x = _x; y = _y; }

    template <typename T> ImVec2(const sf::Vector2<T>& v) { x = static_cast<float>(v.x); y = static_cast<float>(v.y); } template <typename T> operator sf::Vector2<T>() const { return sf::Vector2<T>(x, y); }
#line 95 "c:\\biblioteki\\imgui-sfml\\imgui.h"
};

struct ImVec4
{
    float x, y, z, w;
    ImVec4() { x = y = z = w = 0.0f; }
    ImVec4(float _x, float _y, float _z, float _w) { x = _x; y = _y; z = _z; w = _w; }

    ImVec4(const sf::Color & c) : ImVec4(c.r / 255.f, c.g / 255.f, c.b / 255.f, c.a / 255.f) { } operator sf::Color() const { return sf::Color( static_cast<sf::Uint8>(x * 255.f), static_cast<sf::Uint8>(y * 255.f), static_cast<sf::Uint8>(z * 255.f), static_cast<sf::Uint8>(w * 255.f)); }
#line 105 "c:\\biblioteki\\imgui-sfml\\imgui.h"
};



namespace ImGui
{
    
     ImGuiIO&      GetIO();
     ImGuiStyle&   GetStyle();
     ImDrawData*   GetDrawData();                              
     void          NewFrame();                                 
     void          Render();                                   
     void          Shutdown();
     void          ShowUserGuide();                            
     void          ShowStyleEditor(ImGuiStyle* ref = 0);    
     void          ShowTestWindow(bool* p_open = 0);        
     void          ShowMetricsWindow(bool* p_open = 0);     

    
     bool          Begin(const char* name, bool* p_open = 0, ImGuiWindowFlags flags = 0);                                                   
     bool          Begin(const char* name, bool* p_open, const ImVec2& size_on_first_use, float bg_alpha = -1.0f, ImGuiWindowFlags flags = 0); 
     void          End();                                                                                                                      
     bool          BeginChild(const char* str_id, const ImVec2& size = ImVec2(0,0), bool border = false, ImGuiWindowFlags extra_flags = 0);    
     bool          BeginChild(ImGuiID id, const ImVec2& size = ImVec2(0,0), bool border = false, ImGuiWindowFlags extra_flags = 0);            
     void          EndChild();
     ImVec2        GetContentRegionMax();                                              
     ImVec2        GetContentRegionAvail();                                            
     float         GetContentRegionAvailWidth();                                       
     ImVec2        GetWindowContentRegionMin();                                        
     ImVec2        GetWindowContentRegionMax();                                        
     float         GetWindowContentRegionWidth();                                      
     ImDrawList*   GetWindowDrawList();                                                
     ImVec2        GetWindowPos();                                                     
     ImVec2        GetWindowSize();                                                    
     float         GetWindowWidth();
     float         GetWindowHeight();
     bool          IsWindowCollapsed();
     void          SetWindowFontScale(float scale);                                    

     void          SetNextWindowPos(const ImVec2& pos, ImGuiSetCond cond = 0);         
     void          SetNextWindowPosCenter(ImGuiSetCond cond = 0);                      
     void          SetNextWindowSize(const ImVec2& size, ImGuiSetCond cond = 0);       
     void          SetNextWindowSizeConstraints(const ImVec2& size_min, const ImVec2& size_max, ImGuiSizeConstraintCallback custom_callback = 0, void* custom_callback_data = 0); 
     void          SetNextWindowContentSize(const ImVec2& size);                       
     void          SetNextWindowContentWidth(float width);                             
     void          SetNextWindowCollapsed(bool collapsed, ImGuiSetCond cond = 0);      
     void          SetNextWindowFocus();                                               
     void          SetWindowPos(const ImVec2& pos, ImGuiSetCond cond = 0);             
     void          SetWindowSize(const ImVec2& size, ImGuiSetCond cond = 0);           
     void          SetWindowCollapsed(bool collapsed, ImGuiSetCond cond = 0);          
     void          SetWindowFocus();                                                   
     void          SetWindowPos(const char* name, const ImVec2& pos, ImGuiSetCond cond = 0);      
     void          SetWindowSize(const char* name, const ImVec2& size, ImGuiSetCond cond = 0);    
     void          SetWindowCollapsed(const char* name, bool collapsed, ImGuiSetCond cond = 0);   
     void          SetWindowFocus(const char* name);                                              

     float         GetScrollX();                                                       
     float         GetScrollY();                                                       
     float         GetScrollMaxX();                                                    
     float         GetScrollMaxY();                                                    
     void          SetScrollX(float scroll_x);                                         
     void          SetScrollY(float scroll_y);                                         
     void          SetScrollHere(float center_y_ratio = 0.5f);                         
     void          SetScrollFromPosY(float pos_y, float center_y_ratio = 0.5f);        
     void          SetKeyboardFocusHere(int offset = 0);                               
     void          SetStateStorage(ImGuiStorage* tree);                                
     ImGuiStorage* GetStateStorage();

    
     void          PushFont(ImFont* font);                                             
     void          PopFont();
     void          PushStyleColor(ImGuiCol idx, const ImVec4& col);
     void          PopStyleColor(int count = 1);
     void          PushStyleVar(ImGuiStyleVar idx, float val);
     void          PushStyleVar(ImGuiStyleVar idx, const ImVec2& val);
     void          PopStyleVar(int count = 1);
     ImFont*       GetFont();                                                          
     float         GetFontSize();                                                      
     ImVec2        GetFontTexUvWhitePixel();                                           
     ImU32         GetColorU32(ImGuiCol idx, float alpha_mul = 1.0f);                  
     ImU32         GetColorU32(const ImVec4& col);                                     

    
     void          PushItemWidth(float item_width);                                    
     void          PopItemWidth();
     float         CalcItemWidth();                                                    
     void          PushTextWrapPos(float wrap_pos_x = 0.0f);                           
     void          PopTextWrapPos();
     void          PushAllowKeyboardFocus(bool v);                                     
     void          PopAllowKeyboardFocus();
     void          PushButtonRepeat(bool repeat);                                      
     void          PopButtonRepeat();

    
     void          Separator();                                                        
     void          SameLine(float pos_x = 0.0f, float spacing_w = -1.0f);              
     void          NewLine();                                                          
     void          Spacing();                                                          
     void          Dummy(const ImVec2& size);                                          
     void          Indent(float indent_w = 0.0f);                                      
     void          Unindent(float indent_w = 0.0f);                                    
     void          BeginGroup();                                                       
     void          EndGroup();
     ImVec2        GetCursorPos();                                                     
     float         GetCursorPosX();                                                    
     float         GetCursorPosY();                                                    
     void          SetCursorPos(const ImVec2& local_pos);                              
     void          SetCursorPosX(float x);                                             
     void          SetCursorPosY(float y);                                             
     ImVec2        GetCursorStartPos();                                                
     ImVec2        GetCursorScreenPos();                                               
     void          SetCursorScreenPos(const ImVec2& pos);                              
     void          AlignFirstTextHeightToWidgets();                                    
     float         GetTextLineHeight();                                                
     float         GetTextLineHeightWithSpacing();                                     
     float         GetItemsLineHeightWithSpacing();                                    

    
    
     void          Columns(int count = 1, const char* id = 0, bool border = true);  
     void          NextColumn();                                                       
     int           GetColumnIndex();                                                   
     float         GetColumnOffset(int column_index = -1);                             
     void          SetColumnOffset(int column_index, float offset_x);                  
     float         GetColumnWidth(int column_index = -1);                              
     int           GetColumnsCount();                                                  

    
    
    
     void          PushID(const char* str_id);                                         
     void          PushID(const char* str_id_begin, const char* str_id_end);
     void          PushID(const void* ptr_id);
     void          PushID(int int_id);
     void          PopID();
     ImGuiID       GetID(const char* str_id);                                          
     ImGuiID       GetID(const char* str_id_begin, const char* str_id_end);
     ImGuiID       GetID(const void* ptr_id);

    
     void          Text(const char* fmt, ...) ;
     void          TextV(const char* fmt, va_list args);
     void          TextColored(const ImVec4& col, const char* fmt, ...) ;  
     void          TextColoredV(const ImVec4& col, const char* fmt, va_list args);
     void          TextDisabled(const char* fmt, ...) ;                    
     void          TextDisabledV(const char* fmt, va_list args);
     void          TextWrapped(const char* fmt, ...) ;                     
     void          TextWrappedV(const char* fmt, va_list args);
     void          TextUnformatted(const char* text, const char* text_end = 0);         
     void          LabelText(const char* label, const char* fmt, ...) ;    
     void          LabelTextV(const char* label, const char* fmt, va_list args);
     void          Bullet();                                                               
     void          BulletText(const char* fmt, ...) ;                      
     void          BulletTextV(const char* fmt, va_list args);
     bool          Button(const char* label, const ImVec2& size = ImVec2(0,0));            
     bool          SmallButton(const char* label);                                         
     bool          InvisibleButton(const char* str_id, const ImVec2& size);
     void          Image(ImTextureID user_texture_id, const ImVec2& size, const ImVec2& uv0 = ImVec2(0,0), const ImVec2& uv1 = ImVec2(1,1), const ImVec4& tint_col = ImVec4(1,1,1,1), const ImVec4& border_col = ImVec4(0,0,0,0));
     bool          ImageButton(ImTextureID user_texture_id, const ImVec2& size, const ImVec2& uv0 = ImVec2(0,0),  const ImVec2& uv1 = ImVec2(1,1), int frame_padding = -1, const ImVec4& bg_col = ImVec4(0,0,0,0), const ImVec4& tint_col = ImVec4(1,1,1,1));    
     bool          Checkbox(const char* label, bool* v);
     bool          CheckboxFlags(const char* label, unsigned int* flags, unsigned int flags_value);
     bool          RadioButton(const char* label, bool active);
     bool          RadioButton(const char* label, int* v, int v_button);
     bool          Combo(const char* label, int* current_item, const char* const* items, int items_count, int height_in_items = -1);
     bool          Combo(const char* label, int* current_item, const char* items_separated_by_zeros, int height_in_items = -1);      
     bool          Combo(const char* label, int* current_item, bool (*items_getter)(void* data, int idx, const char** out_text), void* data, int items_count, int height_in_items = -1);
     bool          ColorButton(const ImVec4& col, bool small_height = false, bool outline_border = true);
     bool          ColorEdit3(const char* label, float col[3]);                            
     bool          ColorEdit4(const char* label, float col[4], bool show_alpha = true);    
     void          ColorEditMode(ImGuiColorEditMode mode);                                 
     void          PlotLines(const char* label, const float* values, int values_count, int values_offset = 0, const char* overlay_text = 0, float scale_min = 3.402823466e+38F, float scale_max = 3.402823466e+38F, ImVec2 graph_size = ImVec2(0,0), int stride = sizeof(float));
     void          PlotLines(const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count, int values_offset = 0, const char* overlay_text = 0, float scale_min = 3.402823466e+38F, float scale_max = 3.402823466e+38F, ImVec2 graph_size = ImVec2(0,0));
     void          PlotHistogram(const char* label, const float* values, int values_count, int values_offset = 0, const char* overlay_text = 0, float scale_min = 3.402823466e+38F, float scale_max = 3.402823466e+38F, ImVec2 graph_size = ImVec2(0,0), int stride = sizeof(float));
     void          PlotHistogram(const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count, int values_offset = 0, const char* overlay_text = 0, float scale_min = 3.402823466e+38F, float scale_max = 3.402823466e+38F, ImVec2 graph_size = ImVec2(0,0));
     void          ProgressBar(float fraction, const ImVec2& size_arg = ImVec2(-1,0), const char* overlay = 0);

    
    
     bool          DragFloat(const char* label, float* v, float v_speed = 1.0f, float v_min = 0.0f, float v_max = 0.0f, const char* display_format = "%.3f", float power = 1.0f);     
     bool          DragFloat2(const char* label, float v[2], float v_speed = 1.0f, float v_min = 0.0f, float v_max = 0.0f, const char* display_format = "%.3f", float power = 1.0f);
     bool          DragFloat3(const char* label, float v[3], float v_speed = 1.0f, float v_min = 0.0f, float v_max = 0.0f, const char* display_format = "%.3f", float power = 1.0f);
     bool          DragFloat4(const char* label, float v[4], float v_speed = 1.0f, float v_min = 0.0f, float v_max = 0.0f, const char* display_format = "%.3f", float power = 1.0f);
     bool          DragFloatRange2(const char* label, float* v_current_min, float* v_current_max, float v_speed = 1.0f, float v_min = 0.0f, float v_max = 0.0f, const char* display_format = "%.3f", const char* display_format_max = 0, float power = 1.0f);
     bool          DragInt(const char* label, int* v, float v_speed = 1.0f, int v_min = 0, int v_max = 0, const char* display_format = "%.0f");                                       
     bool          DragInt2(const char* label, int v[2], float v_speed = 1.0f, int v_min = 0, int v_max = 0, const char* display_format = "%.0f");
     bool          DragInt3(const char* label, int v[3], float v_speed = 1.0f, int v_min = 0, int v_max = 0, const char* display_format = "%.0f");
     bool          DragInt4(const char* label, int v[4], float v_speed = 1.0f, int v_min = 0, int v_max = 0, const char* display_format = "%.0f");
     bool          DragIntRange2(const char* label, int* v_current_min, int* v_current_max, float v_speed = 1.0f, int v_min = 0, int v_max = 0, const char* display_format = "%.0f", const char* display_format_max = 0);

    
     bool          InputText(const char* label, char* buf, size_t buf_size, ImGuiInputTextFlags flags = 0, ImGuiTextEditCallback callback = 0, void* user_data = 0);
     bool          InputTextMultiline(const char* label, char* buf, size_t buf_size, const ImVec2& size = ImVec2(0,0), ImGuiInputTextFlags flags = 0, ImGuiTextEditCallback callback = 0, void* user_data = 0);
     bool          InputFloat(const char* label, float* v, float step = 0.0f, float step_fast = 0.0f, int decimal_precision = -1, ImGuiInputTextFlags extra_flags = 0);
     bool          InputFloat2(const char* label, float v[2], int decimal_precision = -1, ImGuiInputTextFlags extra_flags = 0);
     bool          InputFloat3(const char* label, float v[3], int decimal_precision = -1, ImGuiInputTextFlags extra_flags = 0);
     bool          InputFloat4(const char* label, float v[4], int decimal_precision = -1, ImGuiInputTextFlags extra_flags = 0);
     bool          InputInt(const char* label, int* v, int step = 1, int step_fast = 100, ImGuiInputTextFlags extra_flags = 0);
     bool          InputInt2(const char* label, int v[2], ImGuiInputTextFlags extra_flags = 0);
     bool          InputInt3(const char* label, int v[3], ImGuiInputTextFlags extra_flags = 0);
     bool          InputInt4(const char* label, int v[4], ImGuiInputTextFlags extra_flags = 0);

    
     bool          SliderFloat(const char* label, float* v, float v_min, float v_max, const char* display_format = "%.3f", float power = 1.0f);     
     bool          SliderFloat2(const char* label, float v[2], float v_min, float v_max, const char* display_format = "%.3f", float power = 1.0f);
     bool          SliderFloat3(const char* label, float v[3], float v_min, float v_max, const char* display_format = "%.3f", float power = 1.0f);
     bool          SliderFloat4(const char* label, float v[4], float v_min, float v_max, const char* display_format = "%.3f", float power = 1.0f);
     bool          SliderAngle(const char* label, float* v_rad, float v_degrees_min = -360.0f, float v_degrees_max = +360.0f);
     bool          SliderInt(const char* label, int* v, int v_min, int v_max, const char* display_format = "%.0f");
     bool          SliderInt2(const char* label, int v[2], int v_min, int v_max, const char* display_format = "%.0f");
     bool          SliderInt3(const char* label, int v[3], int v_min, int v_max, const char* display_format = "%.0f");
     bool          SliderInt4(const char* label, int v[4], int v_min, int v_max, const char* display_format = "%.0f");
     bool          VSliderFloat(const char* label, const ImVec2& size, float* v, float v_min, float v_max, const char* display_format = "%.3f", float power = 1.0f);
     bool          VSliderInt(const char* label, const ImVec2& size, int* v, int v_min, int v_max, const char* display_format = "%.0f");

    
     bool          TreeNode(const char* label);                                            
     bool          TreeNode(const char* str_id, const char* fmt, ...) ;    
     bool          TreeNode(const void* ptr_id, const char* fmt, ...) ;    
     bool          TreeNodeV(const char* str_id, const char* fmt, va_list args);           
     bool          TreeNodeV(const void* ptr_id, const char* fmt, va_list args);           
     bool          TreeNodeEx(const char* label, ImGuiTreeNodeFlags flags = 0);
     bool          TreeNodeEx(const char* str_id, ImGuiTreeNodeFlags flags, const char* fmt, ...) ;
     bool          TreeNodeEx(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, ...) ;
     bool          TreeNodeExV(const char* str_id, ImGuiTreeNodeFlags flags, const char* fmt, va_list args);
     bool          TreeNodeExV(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, va_list args);
     void          TreePush(const char* str_id = 0);                                    
     void          TreePush(const void* ptr_id = 0);                                    
     void          TreePop();                                                              
     void          TreeAdvanceToLabelPos();                                                
     float         GetTreeNodeToLabelSpacing();                                            
     void          SetNextTreeNodeOpen(bool is_open, ImGuiSetCond cond = 0);               
     bool          CollapsingHeader(const char* label, ImGuiTreeNodeFlags flags = 0);      
     bool          CollapsingHeader(const char* label, bool* p_open, ImGuiTreeNodeFlags flags = 0); 

    
     bool          Selectable(const char* label, bool selected = false, ImGuiSelectableFlags flags = 0, const ImVec2& size = ImVec2(0,0));  
     bool          Selectable(const char* label, bool* p_selected, ImGuiSelectableFlags flags = 0, const ImVec2& size = ImVec2(0,0));
     bool          ListBox(const char* label, int* current_item, const char* const* items, int items_count, int height_in_items = -1);
     bool          ListBox(const char* label, int* current_item, bool (*items_getter)(void* data, int idx, const char** out_text), void* data, int items_count, int height_in_items = -1);
     bool          ListBoxHeader(const char* label, const ImVec2& size = ImVec2(0,0)); 
     bool          ListBoxHeader(const char* label, int items_count, int height_in_items = -1); 
     void          ListBoxFooter();                                                    

    
     void          Value(const char* prefix, bool b);
     void          Value(const char* prefix, int v);
     void          Value(const char* prefix, unsigned int v);
     void          Value(const char* prefix, float v, const char* float_format = 0);
     void          ValueColor(const char* prefix, const ImVec4& v);
     void          ValueColor(const char* prefix, ImU32 v);

    
     void          SetTooltip(const char* fmt, ...) ;                  
     void          SetTooltipV(const char* fmt, va_list args);
     void          BeginTooltip();                                                     
     void          EndTooltip();

    
     bool          BeginMainMenuBar();                                                 
     void          EndMainMenuBar();
     bool          BeginMenuBar();                                                     
     void          EndMenuBar();
     bool          BeginMenu(const char* label, bool enabled = true);                  
     void          EndMenu();
     bool          MenuItem(const char* label, const char* shortcut = 0, bool selected = false, bool enabled = true);  
     bool          MenuItem(const char* label, const char* shortcut, bool* p_selected, bool enabled = true);              

    
     void          OpenPopup(const char* str_id);                                      
     bool          BeginPopup(const char* str_id);                                     
     bool          BeginPopupModal(const char* name, bool* p_open = 0, ImGuiWindowFlags extra_flags = 0);               
     bool          BeginPopupContextItem(const char* str_id, int mouse_button = 1);                                        
     bool          BeginPopupContextWindow(bool also_over_items = true, const char* str_id = 0, int mouse_button = 1);  
     bool          BeginPopupContextVoid(const char* str_id = 0, int mouse_button = 1);                                 
     void          EndPopup();
     void          CloseCurrentPopup();                                                

    
     void          LogToTTY(int max_depth = -1);                                       
     void          LogToFile(int max_depth = -1, const char* filename = 0);         
     void          LogToClipboard(int max_depth = -1);                                 
     void          LogFinish();                                                        
     void          LogButtons();                                                       
     void          LogText(const char* fmt, ...) ;                     

    
     void          PushClipRect(const ImVec2& clip_rect_min, const ImVec2& clip_rect_max, bool intersect_with_current_clip_rect);
     void          PopClipRect();

    
     bool          IsItemHovered();                                                    
     bool          IsItemHoveredRect();                                                
     bool          IsItemActive();                                                     
     bool          IsItemClicked(int mouse_button = 0);                                
     bool          IsItemVisible();                                                    
     bool          IsAnyItemHovered();
     bool          IsAnyItemActive();
     ImVec2        GetItemRectMin();                                                   
     ImVec2        GetItemRectMax();                                                   
     ImVec2        GetItemRectSize();                                                  
     void          SetItemAllowOverlap();                                              
     bool          IsWindowHovered();                                                  
     bool          IsWindowFocused();                                                  
     bool          IsRootWindowFocused();                                              
     bool          IsRootWindowOrAnyChildFocused();                                    
     bool          IsRootWindowOrAnyChildHovered();                                    
     bool          IsRectVisible(const ImVec2& size);                                  
     bool          IsRectVisible(const ImVec2& rect_min, const ImVec2& rect_max);      
     bool          IsPosHoveringAnyWindow(const ImVec2& pos);                          
     float         GetTime();
     int           GetFrameCount();
     const char*   GetStyleColName(ImGuiCol idx);
     ImVec2        CalcItemRectClosestPoint(const ImVec2& pos, bool on_edge = false, float outward = +0.0f);   
     ImVec2        CalcTextSize(const char* text, const char* text_end = 0, bool hide_text_after_double_hash = false, float wrap_width = -1.0f);
     void          CalcListClipping(int items_count, float items_height, int* out_items_display_start, int* out_items_display_end);    

     bool          BeginChildFrame(ImGuiID id, const ImVec2& size, ImGuiWindowFlags extra_flags = 0);	
     void          EndChildFrame();

     ImVec4        ColorConvertU32ToFloat4(ImU32 in);
     ImU32         ColorConvertFloat4ToU32(const ImVec4& in);
     void          ColorConvertRGBtoHSV(float r, float g, float b, float& out_h, float& out_s, float& out_v);
     void          ColorConvertHSVtoRGB(float h, float s, float v, float& out_r, float& out_g, float& out_b);

    
     int           GetKeyIndex(ImGuiKey key);                                          
     bool          IsKeyDown(int key_index);                                           
     bool          IsKeyPressed(int key_index, bool repeat = true);                    
     bool          IsKeyReleased(int key_index);                                       
     bool          IsMouseDown(int button);                                            
     bool          IsMouseClicked(int button, bool repeat = false);                    
     bool          IsMouseDoubleClicked(int button);                                   
     bool          IsMouseReleased(int button);                                        
     bool          IsMouseHoveringWindow();                                            
     bool          IsMouseHoveringAnyWindow();                                         
     bool          IsMouseHoveringRect(const ImVec2& r_min, const ImVec2& r_max, bool clip = true);  
     bool          IsMouseDragging(int button = 0, float lock_threshold = -1.0f);      
     ImVec2        GetMousePos();                                                      
     ImVec2        GetMousePosOnOpeningCurrentPopup();                                 
     ImVec2        GetMouseDragDelta(int button = 0, float lock_threshold = -1.0f);    
     void          ResetMouseDragDelta(int button = 0);                                
     ImGuiMouseCursor GetMouseCursor();                                                
     void          SetMouseCursor(ImGuiMouseCursor type);                              
     void          CaptureKeyboardFromApp(bool capture = true);                        
     void          CaptureMouseFromApp(bool capture = true);                           

    
     void*         MemAlloc(size_t sz);
     void          MemFree(void* ptr);
     const char*   GetClipboardText();
     void          SetClipboardText(const char* text);

    
    
     const char*   GetVersion();
     ImGuiContext* CreateContext(void* (*malloc_fn)(size_t) = 0, void (*free_fn)(void*) = 0);
     void          DestroyContext(ImGuiContext* ctx);
     ImGuiContext* GetCurrentContext();
     void          SetCurrentContext(ImGuiContext* ctx);

    

    static inline bool      CollapsingHeader(const char* label, const char* str_id, bool framed = true, bool default_open = false) { (void)str_id; (void)framed; ImGuiTreeNodeFlags default_open_flags = 1<<5; return CollapsingHeader(label, (default_open ? default_open_flags : 0)); } 
    static inline ImFont*   GetWindowFont() { return GetFont(); }                              
    static inline float     GetWindowFontSize() { return GetFontSize(); }                      
    static inline void      SetScrollPosHere() { SetScrollHere(); }                            
    static inline bool      GetWindowCollapsed() { return ImGui::IsWindowCollapsed(); }        
    static inline bool      IsRectClipped(const ImVec2& size) { return !IsRectVisible(size); } 
#line 474 "c:\\biblioteki\\imgui-sfml\\imgui.h"

} 


enum ImGuiWindowFlags_
{
    
    ImGuiWindowFlags_NoTitleBar             = 1 << 0,   
    ImGuiWindowFlags_NoResize               = 1 << 1,   
    ImGuiWindowFlags_NoMove                 = 1 << 2,   
    ImGuiWindowFlags_NoScrollbar            = 1 << 3,   
    ImGuiWindowFlags_NoScrollWithMouse      = 1 << 4,   
    ImGuiWindowFlags_NoCollapse             = 1 << 5,   
    ImGuiWindowFlags_AlwaysAutoResize       = 1 << 6,   
    ImGuiWindowFlags_ShowBorders            = 1 << 7,   
    ImGuiWindowFlags_NoSavedSettings        = 1 << 8,   
    ImGuiWindowFlags_NoInputs               = 1 << 9,   
    ImGuiWindowFlags_MenuBar                = 1 << 10,  
    ImGuiWindowFlags_HorizontalScrollbar    = 1 << 11,  
    ImGuiWindowFlags_NoFocusOnAppearing     = 1 << 12,  
    ImGuiWindowFlags_NoBringToFrontOnFocus  = 1 << 13,  
    ImGuiWindowFlags_AlwaysVerticalScrollbar= 1 << 14,  
    ImGuiWindowFlags_AlwaysHorizontalScrollbar=1<< 15,  
    ImGuiWindowFlags_AlwaysUseWindowPadding = 1 << 16,  
    
    ImGuiWindowFlags_ChildWindow            = 1 << 20,  
    ImGuiWindowFlags_ChildWindowAutoFitX    = 1 << 21,  
    ImGuiWindowFlags_ChildWindowAutoFitY    = 1 << 22,  
    ImGuiWindowFlags_ComboBox               = 1 << 23,  
    ImGuiWindowFlags_Tooltip                = 1 << 24,  
    ImGuiWindowFlags_Popup                  = 1 << 25,  
    ImGuiWindowFlags_Modal                  = 1 << 26,  
    ImGuiWindowFlags_ChildMenu              = 1 << 27   
};


enum ImGuiInputTextFlags_
{
    
    ImGuiInputTextFlags_CharsDecimal        = 1 << 0,   
    ImGuiInputTextFlags_CharsHexadecimal    = 1 << 1,   
    ImGuiInputTextFlags_CharsUppercase      = 1 << 2,   
    ImGuiInputTextFlags_CharsNoBlank        = 1 << 3,   
    ImGuiInputTextFlags_AutoSelectAll       = 1 << 4,   
    ImGuiInputTextFlags_EnterReturnsTrue    = 1 << 5,   
    ImGuiInputTextFlags_CallbackCompletion  = 1 << 6,   
    ImGuiInputTextFlags_CallbackHistory     = 1 << 7,   
    ImGuiInputTextFlags_CallbackAlways      = 1 << 8,   
    ImGuiInputTextFlags_CallbackCharFilter  = 1 << 9,   
    ImGuiInputTextFlags_AllowTabInput       = 1 << 10,  
    ImGuiInputTextFlags_CtrlEnterForNewLine = 1 << 11,  
    ImGuiInputTextFlags_NoHorizontalScroll  = 1 << 12,  
    ImGuiInputTextFlags_AlwaysInsertMode    = 1 << 13,  
    ImGuiInputTextFlags_ReadOnly            = 1 << 14,  
    ImGuiInputTextFlags_Password            = 1 << 15,  
    
    ImGuiInputTextFlags_Multiline           = 1 << 20   
};


enum ImGuiTreeNodeFlags_
{
    ImGuiTreeNodeFlags_Selected             = 1 << 0,   
    ImGuiTreeNodeFlags_Framed               = 1 << 1,   
    ImGuiTreeNodeFlags_AllowOverlapMode     = 1 << 2,   
    ImGuiTreeNodeFlags_NoTreePushOnOpen     = 1 << 3,   
    ImGuiTreeNodeFlags_NoAutoOpenOnLog      = 1 << 4,   
    ImGuiTreeNodeFlags_DefaultOpen          = 1 << 5,   
    ImGuiTreeNodeFlags_OpenOnDoubleClick    = 1 << 6,   
    ImGuiTreeNodeFlags_OpenOnArrow          = 1 << 7,   
    ImGuiTreeNodeFlags_Leaf                 = 1 << 8,   
    ImGuiTreeNodeFlags_Bullet               = 1 << 9,   
    
    
    ImGuiTreeNodeFlags_CollapsingHeader     = ImGuiTreeNodeFlags_Framed | ImGuiTreeNodeFlags_NoAutoOpenOnLog
};


enum ImGuiSelectableFlags_
{
    
    ImGuiSelectableFlags_DontClosePopups    = 1 << 0,   
    ImGuiSelectableFlags_SpanAllColumns     = 1 << 1,   
    ImGuiSelectableFlags_AllowDoubleClick   = 1 << 2    
};


enum ImGuiKey_
{
    ImGuiKey_Tab,       
    ImGuiKey_LeftArrow, 
    ImGuiKey_RightArrow,
    ImGuiKey_UpArrow,   
    ImGuiKey_DownArrow, 
    ImGuiKey_PageUp,
    ImGuiKey_PageDown,
    ImGuiKey_Home,      
    ImGuiKey_End,       
    ImGuiKey_Delete,    
    ImGuiKey_Backspace, 
    ImGuiKey_Enter,     
    ImGuiKey_Escape,    
    ImGuiKey_A,         
    ImGuiKey_C,         
    ImGuiKey_V,         
    ImGuiKey_X,         
    ImGuiKey_Y,         
    ImGuiKey_Z,         
    ImGuiKey_COUNT
};


enum ImGuiCol_
{
    ImGuiCol_Text,
    ImGuiCol_TextDisabled,
    ImGuiCol_WindowBg,              
    ImGuiCol_ChildWindowBg,         
    ImGuiCol_PopupBg,               
    ImGuiCol_Border,
    ImGuiCol_BorderShadow,
    ImGuiCol_FrameBg,               
    ImGuiCol_FrameBgHovered,
    ImGuiCol_FrameBgActive,
    ImGuiCol_TitleBg,
    ImGuiCol_TitleBgCollapsed,
    ImGuiCol_TitleBgActive,
    ImGuiCol_MenuBarBg,
    ImGuiCol_ScrollbarBg,
    ImGuiCol_ScrollbarGrab,
    ImGuiCol_ScrollbarGrabHovered,
    ImGuiCol_ScrollbarGrabActive,
    ImGuiCol_ComboBg,
    ImGuiCol_CheckMark,
    ImGuiCol_SliderGrab,
    ImGuiCol_SliderGrabActive,
    ImGuiCol_Button,
    ImGuiCol_ButtonHovered,
    ImGuiCol_ButtonActive,
    ImGuiCol_Header,
    ImGuiCol_HeaderHovered,
    ImGuiCol_HeaderActive,
    ImGuiCol_Column,
    ImGuiCol_ColumnHovered,
    ImGuiCol_ColumnActive,
    ImGuiCol_ResizeGrip,
    ImGuiCol_ResizeGripHovered,
    ImGuiCol_ResizeGripActive,
    ImGuiCol_CloseButton,
    ImGuiCol_CloseButtonHovered,
    ImGuiCol_CloseButtonActive,
    ImGuiCol_PlotLines,
    ImGuiCol_PlotLinesHovered,
    ImGuiCol_PlotHistogram,
    ImGuiCol_PlotHistogramHovered,
    ImGuiCol_TextSelectedBg,
    ImGuiCol_ModalWindowDarkening,  
    ImGuiCol_COUNT
};



enum ImGuiStyleVar_
{
    ImGuiStyleVar_Alpha,               
    ImGuiStyleVar_WindowPadding,       
    ImGuiStyleVar_WindowRounding,      
    ImGuiStyleVar_WindowMinSize,       
    ImGuiStyleVar_ChildWindowRounding, 
    ImGuiStyleVar_FramePadding,        
    ImGuiStyleVar_FrameRounding,       
    ImGuiStyleVar_ItemSpacing,         
    ImGuiStyleVar_ItemInnerSpacing,    
    ImGuiStyleVar_IndentSpacing,       
    ImGuiStyleVar_GrabMinSize,         
    ImGuiStyleVar_ButtonTextAlign,     
    ImGuiStyleVar_Count_
};



enum ImGuiColorEditMode_
{
    ImGuiColorEditMode_UserSelect = -2,
    ImGuiColorEditMode_UserSelectShowButton = -1,
    ImGuiColorEditMode_RGB = 0,
    ImGuiColorEditMode_HSV = 1,
    ImGuiColorEditMode_HEX = 2
};


enum ImGuiMouseCursor_
{
    ImGuiMouseCursor_None = -1,
    ImGuiMouseCursor_Arrow = 0,
    ImGuiMouseCursor_TextInput,         
    ImGuiMouseCursor_Move,              
    ImGuiMouseCursor_ResizeNS,          
    ImGuiMouseCursor_ResizeEW,          
    ImGuiMouseCursor_ResizeNESW,        
    ImGuiMouseCursor_ResizeNWSE,        
    ImGuiMouseCursor_Count_
};



enum ImGuiSetCond_
{
    ImGuiSetCond_Always        = 1 << 0, 
    ImGuiSetCond_Once          = 1 << 1, 
    ImGuiSetCond_FirstUseEver  = 1 << 2, 
    ImGuiSetCond_Appearing     = 1 << 3  
};

struct ImGuiStyle
{
    float       Alpha;                      
    ImVec2      WindowPadding;              
    ImVec2      WindowMinSize;              
    float       WindowRounding;             
    ImVec2      WindowTitleAlign;           
    float       ChildWindowRounding;        
    ImVec2      FramePadding;               
    float       FrameRounding;              
    ImVec2      ItemSpacing;                
    ImVec2      ItemInnerSpacing;           
    ImVec2      TouchExtraPadding;          
    float       IndentSpacing;              
    float       ColumnsMinSpacing;          
    float       ScrollbarSize;              
    float       ScrollbarRounding;          
    float       GrabMinSize;                
    float       GrabRounding;               
    ImVec2      ButtonTextAlign;            
    ImVec2      DisplayWindowPadding;       
    ImVec2      DisplaySafeAreaPadding;     
    bool        AntiAliasedLines;           
    bool        AntiAliasedShapes;          
    float       CurveTessellationTol;       
    ImVec4      Colors[ImGuiCol_COUNT];

     ImGuiStyle();
};



struct ImGuiIO
{
    
    
    

    ImVec2        DisplaySize;              
    float         DeltaTime;                
    float         IniSavingRate;            
    const char*   IniFilename;              
    const char*   LogFilename;              
    float         MouseDoubleClickTime;     
    float         MouseDoubleClickMaxDist;  
    float         MouseDragThreshold;       
    int           KeyMap[ImGuiKey_COUNT];   
    float         KeyRepeatDelay;           
    float         KeyRepeatRate;            
    void*         UserData;                 

    ImFontAtlas*  Fonts;                    
    float         FontGlobalScale;          
    bool          FontAllowUserScaling;     
    ImFont*       FontDefault;              
    ImVec2        DisplayFramebufferScale;  
    ImVec2        DisplayVisibleMin;        
    ImVec2        DisplayVisibleMax;        

    
    bool          OSXBehaviors;             

    
    
    

    
    
    
    void        (*RenderDrawListsFn)(ImDrawData* data);

    
    
    const char* (*GetClipboardTextFn)(void* user_data);
    void        (*SetClipboardTextFn)(void* user_data, const char* text);
    void*       ClipboardUserData;

    
    
    void*       (*MemAllocFn)(size_t sz);
    void        (*MemFreeFn)(void* ptr);

    
    
    void        (*ImeSetInputScreenPosFn)(int x, int y);
    void*       ImeWindowHandle;            

    
    
    

    ImVec2      MousePos;                   
    bool        MouseDown[5];               
    float       MouseWheel;                 
    bool        MouseDrawCursor;            
    bool        KeyCtrl;                    
    bool        KeyShift;                   
    bool        KeyAlt;                     
    bool        KeySuper;                   
    bool        KeysDown[512];              
    ImWchar     InputCharacters[16+1];      

    
     void AddInputCharacter(ImWchar c);                        
     void AddInputCharactersUTF8(const char* utf8_chars);      
    inline void    ClearInputCharacters() { InputCharacters[0] = 0; }   

    
    
    

    bool        WantCaptureMouse;           
    bool        WantCaptureKeyboard;        
    bool        WantTextInput;              
    float       Framerate;                  
    int         MetricsAllocs;              
    int         MetricsRenderVertices;      
    int         MetricsRenderIndices;       
    int         MetricsActiveWindows;       
    ImVec2      MouseDelta;                 

    
    
    

    ImVec2      MousePosPrev;               
    bool        MouseClicked[5];            
    ImVec2      MouseClickedPos[5];         
    float       MouseClickedTime[5];        
    bool        MouseDoubleClicked[5];      
    bool        MouseReleased[5];           
    bool        MouseDownOwned[5];          
    float       MouseDownDuration[5];       
    float       MouseDownDurationPrev[5];   
    float       MouseDragMaxDistanceSqr[5]; 
    float       KeysDownDuration[512];      
    float       KeysDownDurationPrev[512];  

       ImGuiIO();
};







template<typename T>
class ImVector
{
public:
    int                         Size;
    int                         Capacity;
    T*                          Data;

    typedef T                   value_type;
    typedef value_type*         iterator;
    typedef const value_type*   const_iterator;

    ImVector()                  { Size = Capacity = 0; Data = 0; }
    ~ImVector()                 { if (Data) ImGui::MemFree(Data); }

    inline bool                 empty() const                   { return Size == 0; }
    inline int                  size() const                    { return Size; }
    inline int                  capacity() const                { return Capacity; }

    inline value_type&          operator[](int i)               { (void)( (!!(i < Size)) || (_wassert(L"i < Size", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(854)), 0) ); return Data[i]; }
    inline const value_type&    operator[](int i) const         { (void)( (!!(i < Size)) || (_wassert(L"i < Size", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(855)), 0) ); return Data[i]; }

    inline void                 clear()                         { if (Data) { Size = Capacity = 0; ImGui::MemFree(Data); Data = 0; } }
    inline iterator             begin()                         { return Data; }
    inline const_iterator       begin() const                   { return Data; }
    inline iterator             end()                           { return Data + Size; }
    inline const_iterator       end() const                     { return Data + Size; }
    inline value_type&          front()                         { (void)( (!!(Size > 0)) || (_wassert(L"Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(862)), 0) ); return Data[0]; }
    inline const value_type&    front() const                   { (void)( (!!(Size > 0)) || (_wassert(L"Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(863)), 0) ); return Data[0]; }
    inline value_type&          back()                          { (void)( (!!(Size > 0)) || (_wassert(L"Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(864)), 0) ); return Data[Size-1]; }
    inline const value_type&    back() const                    { (void)( (!!(Size > 0)) || (_wassert(L"Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(865)), 0) ); return Data[Size-1]; }
    inline void                 swap(ImVector<T>& rhs)          { int rhs_size = rhs.Size; rhs.Size = Size; Size = rhs_size; int rhs_cap = rhs.Capacity; rhs.Capacity = Capacity; Capacity = rhs_cap; value_type* rhs_data = rhs.Data; rhs.Data = Data; Data = rhs_data; }

    inline int                  _grow_capacity(int new_size)    { int new_capacity = Capacity ? (Capacity + Capacity/2) : 8; return new_capacity > new_size ? new_capacity : new_size; }

    inline void                 resize(int new_size)            { if (new_size > Capacity) reserve(_grow_capacity(new_size)); Size = new_size; }
    inline void                 reserve(int new_capacity)
    {
        if (new_capacity <= Capacity) return;
        T* new_data = (value_type*)ImGui::MemAlloc((size_t)new_capacity * sizeof(value_type));
        if (Data)
            memcpy(new_data, Data, (size_t)Size * sizeof(value_type));
        ImGui::MemFree(Data);
        Data = new_data;
        Capacity = new_capacity;
    }

    inline void                 push_back(const value_type& v)  { if (Size == Capacity) reserve(_grow_capacity(Size+1)); Data[Size++] = v; }
    inline void                 pop_back()                      { (void)( (!!(Size > 0)) || (_wassert(L"Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(883)), 0) ); Size--; }

    inline iterator             erase(const_iterator it)        { (void)( (!!(it >= Data && it < Data+Size)) || (_wassert(L"it >= Data && it < Data+Size", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(885)), 0) ); const ptrdiff_t off = it - Data; memmove(Data + off, Data + off + 1, ((size_t)Size - (size_t)off - 1) * sizeof(value_type)); Size--; return Data + off; }
    inline iterator             insert(const_iterator it, const value_type& v)  { (void)( (!!(it >= Data && it <= Data+Size)) || (_wassert(L"it >= Data && it <= Data+Size", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(886)), 0) ); const ptrdiff_t off = it - Data; if (Size == Capacity) reserve(Capacity ? Capacity * 2 : 4); if (off < (int)Size) memmove(Data + off + 1, Data + off, ((size_t)Size - (size_t)off) * sizeof(value_type)); Data[off] = v; Size++; return Data + off; }
};










struct ImGuiOnceUponAFrame
{
    ImGuiOnceUponAFrame() { RefFrame = -1; }
    mutable int RefFrame;
    operator bool() const { int current_frame = ImGui::GetFrameCount(); if (RefFrame == current_frame) return false; RefFrame = current_frame; return true; }
};


struct ImGuiTextFilter
{
    struct TextRange
    {
        const char* b;
        const char* e;

        TextRange() { b = e = 0; }
        TextRange(const char* _b, const char* _e) { b = _b; e = _e; }
        const char* begin() const { return b; }
        const char* end() const { return e; }
        bool empty() const { return b == e; }
        char front() const { return *b; }
        static bool is_blank(char c) { return c == ' ' || c == '\t'; }
        void trim_blanks() { while (b < e && is_blank(*b)) b++; while (e > b && is_blank(*(e-1))) e--; }
         void split(char separator, ImVector<TextRange>& out);
    };

    char                InputBuf[256];
    ImVector<TextRange> Filters;
    int                 CountGrep;

    ImGuiTextFilter(const char* default_filter = "");
    ~ImGuiTextFilter() {}
    void                Clear() { InputBuf[0] = 0; Build(); }
    bool                Draw(const char* label = "Filter (inc,-exc)", float width = 0.0f);    
    bool                PassFilter(const char* text, const char* text_end = 0) const;
    bool                IsActive() const { return !Filters.empty(); }
     void      Build();
};


struct ImGuiTextBuffer
{
    ImVector<char>      Buf;

    ImGuiTextBuffer()   { Buf.push_back(0); }
    inline char         operator[](int i) { return Buf.Data[i]; }
    const char*         begin() const { return &Buf.front(); }
    const char*         end() const { return &Buf.back(); }      
    int                 size() const { return Buf.Size - 1; }
    bool                empty() { return Buf.Size <= 1; }
    void                clear() { Buf.clear(); Buf.push_back(0); }
    const char*         c_str() const { return Buf.Data; }
     void      append(const char* fmt, ...) ;
     void      appendv(const char* fmt, va_list args);
};









struct ImGuiStorage
{
    struct Pair
    {
        ImGuiID key;
        union { int val_i; float val_f; void* val_p; };
        Pair(ImGuiID _key, int _val_i) { key = _key; val_i = _val_i; }
        Pair(ImGuiID _key, float _val_f) { key = _key; val_f = _val_f; }
        Pair(ImGuiID _key, void* _val_p) { key = _key; val_p = _val_p; }
    };
    ImVector<Pair>      Data;

    
    
    
     void      Clear();
     int       GetInt(ImGuiID key, int default_val = 0) const;
     void      SetInt(ImGuiID key, int val);
     bool      GetBool(ImGuiID key, bool default_val = false) const;
     void      SetBool(ImGuiID key, bool val);
     float     GetFloat(ImGuiID key, float default_val = 0.0f) const;
     void      SetFloat(ImGuiID key, float val);
     void*     GetVoidPtr(ImGuiID key) const; 
     void      SetVoidPtr(ImGuiID key, void* val);

    
    
    
    
     int*      GetIntRef(ImGuiID key, int default_val = 0);
     bool*     GetBoolRef(ImGuiID key, bool default_val = false);
     float*    GetFloatRef(ImGuiID key, float default_val = 0.0f);
     void**    GetVoidPtrRef(ImGuiID key, void* default_val = 0);

    
     void      SetAllInt(int val);
};


struct ImGuiTextEditCallbackData
{
    ImGuiInputTextFlags EventFlag;      
    ImGuiInputTextFlags Flags;          
    void*               UserData;       
    bool                ReadOnly;       

    
    ImWchar             EventChar;      

    
    
    ImGuiKey            EventKey;       
    char*               Buf;            
    int                 BufTextLen;     
    int                 BufSize;        
    bool                BufDirty;       
    int                 CursorPos;      
    int                 SelectionStart; 
    int                 SelectionEnd;   

    
     void    DeleteChars(int pos, int bytes_count);
     void    InsertChars(int pos, const char* text, const char* text_end = 0);
    bool    HasSelection() const { return SelectionStart != SelectionEnd; }
};



struct ImGuiSizeConstraintCallbackData
{
    void*   UserData;       
    ImVec2  Pos;            
    ImVec2  CurrentSize;    
    ImVec2  DesiredSize;    
};














#line 1052 "c:\\biblioteki\\imgui-sfml\\imgui.h"









struct ImColor
{
    ImVec4              Value;

    ImColor()                                                       { Value.x = Value.y = Value.z = Value.w = 0.0f; }
    ImColor(int r, int g, int b, int a = 255)                       { float sc = 1.0f/255.0f; Value.x = (float)r * sc; Value.y = (float)g * sc; Value.z = (float)b * sc; Value.w = (float)a * sc; }
    ImColor(ImU32 rgba)                                             { float sc = 1.0f/255.0f; Value.x = (float)((rgba>>0)&0xFF) * sc; Value.y = (float)((rgba>>8)&0xFF) * sc; Value.z = (float)((rgba>>16)&0xFF) * sc; Value.w = (float)((rgba>>24)&0xFF) * sc; }
    ImColor(float r, float g, float b, float a = 1.0f)              { Value.x = r; Value.y = g; Value.z = b; Value.w = a; }
    ImColor(const ImVec4& col)                                      { Value = col; }
    inline operator ImU32() const                                   { return ImGui::ColorConvertFloat4ToU32(Value); }
    inline operator ImVec4() const                                  { return Value; }

    inline void    SetHSV(float h, float s, float v, float a = 1.0f){ ImGui::ColorConvertHSVtoRGB(h, s, v, Value.x, Value.y, Value.z); Value.w = a; }

    static ImColor HSV(float h, float s, float v, float a = 1.0f)   { float r,g,b; ImGui::ColorConvertHSVtoRGB(h, s, v, r, g, b); return ImColor(r,g,b,a); }
};














struct ImGuiListClipper
{
    float   StartPosY;
    float   ItemsHeight;
    int     ItemsCount, StepNo, DisplayStart, DisplayEnd;

    
    
    
    ImGuiListClipper(int items_count = -1, float items_height = -1.0f)  { Begin(items_count, items_height); } 
    ~ImGuiListClipper()                                                 { (void)( (!!(ItemsCount == -1)) || (_wassert(L"ItemsCount == -1", L"c:\\biblioteki\\imgui-sfml\\imgui.h", (unsigned)(1101)), 0) ); }      

     bool Step();                                              
     void Begin(int items_count, float items_height = -1.0f);  
     void End();                                               
};










typedef void (*ImDrawCallback)(const ImDrawList* parent_list, const ImDrawCmd* cmd);


struct ImDrawCmd
{
    unsigned int    ElemCount;              
    ImVec4          ClipRect;               
    ImTextureID     TextureId;              
    ImDrawCallback  UserCallback;           
    void*           UserCallbackData;       

    ImDrawCmd() { ElemCount = 0; ClipRect.x = ClipRect.y = -8192.0f; ClipRect.z = ClipRect.w = +8192.0f; TextureId = 0; UserCallback = 0; UserCallbackData = 0; }
};



typedef unsigned short ImDrawIdx;
#line 1135 "c:\\biblioteki\\imgui-sfml\\imgui.h"



struct ImDrawVert
{
    ImVec2  pos;
    ImVec2  uv;
    ImU32   col;
};





#line 1150 "c:\\biblioteki\\imgui-sfml\\imgui.h"



struct ImDrawChannel
{
    ImVector<ImDrawCmd>     CmdBuffer;
    ImVector<ImDrawIdx>     IdxBuffer;
};







struct ImDrawList
{
    
    ImVector<ImDrawCmd>     CmdBuffer;          
    ImVector<ImDrawIdx>     IdxBuffer;          
    ImVector<ImDrawVert>    VtxBuffer;          

    
    const char*             _OwnerName;         
    unsigned int            _VtxCurrentIdx;     
    ImDrawVert*             _VtxWritePtr;       
    ImDrawIdx*              _IdxWritePtr;       
    ImVector<ImVec4>        _ClipRectStack;     
    ImVector<ImTextureID>   _TextureIdStack;    
    ImVector<ImVec2>        _Path;              
    int                     _ChannelsCurrent;   
    int                     _ChannelsCount;     
    ImVector<ImDrawChannel> _Channels;          

    ImDrawList()  { _OwnerName = 0; Clear(); }
    ~ImDrawList() { ClearFreeMemory(); }
     void  PushClipRect(ImVec2 clip_rect_min, ImVec2 clip_rect_max, bool intersect_with_current_clip_rect = false);  
     void  PushClipRectFullScreen();
     void  PopClipRect();
     void  PushTextureID(const ImTextureID& texture_id);
     void  PopTextureID();

    
     void  AddLine(const ImVec2& a, const ImVec2& b, ImU32 col, float thickness = 1.0f);
     void  AddRect(const ImVec2& a, const ImVec2& b, ImU32 col, float rounding = 0.0f, int rounding_corners_flags = ~0, float thickness = 1.0f);   
     void  AddRectFilled(const ImVec2& a, const ImVec2& b, ImU32 col, float rounding = 0.0f, int rounding_corners_flags = ~0);                     
     void  AddRectFilledMultiColor(const ImVec2& a, const ImVec2& b, ImU32 col_upr_left, ImU32 col_upr_right, ImU32 col_bot_right, ImU32 col_bot_left);
     void  AddQuad(const ImVec2& a, const ImVec2& b, const ImVec2& c, const ImVec2& d, ImU32 col, float thickness = 1.0f);
     void  AddQuadFilled(const ImVec2& a, const ImVec2& b, const ImVec2& c, const ImVec2& d, ImU32 col);
     void  AddTriangle(const ImVec2& a, const ImVec2& b, const ImVec2& c, ImU32 col, float thickness = 1.0f);
     void  AddTriangleFilled(const ImVec2& a, const ImVec2& b, const ImVec2& c, ImU32 col);
     void  AddCircle(const ImVec2& centre, float radius, ImU32 col, int num_segments = 12, float thickness = 1.0f);
     void  AddCircleFilled(const ImVec2& centre, float radius, ImU32 col, int num_segments = 12);
     void  AddText(const ImVec2& pos, ImU32 col, const char* text_begin, const char* text_end = 0);
     void  AddText(const ImFont* font, float font_size, const ImVec2& pos, ImU32 col, const char* text_begin, const char* text_end = 0, float wrap_width = 0.0f, const ImVec4* cpu_fine_clip_rect = 0);
     void  AddImage(ImTextureID user_texture_id, const ImVec2& a, const ImVec2& b, const ImVec2& uv_a = ImVec2(0,0), const ImVec2& uv_b = ImVec2(1,1), ImU32 col = 0xFFFFFFFF);
     void  AddImageQuad(ImTextureID user_texture_id, const ImVec2& a, const ImVec2& b, const ImVec2& c, const ImVec2& d, const ImVec2& uv_a = ImVec2(0,0), const ImVec2& uv_b = ImVec2(1,0), const ImVec2& uv_c = ImVec2(1,1), const ImVec2& uv_d = ImVec2(0,1), ImU32 col = 0xFFFFFFFF);
     void  AddPolyline(const ImVec2* points, const int num_points, ImU32 col, bool closed, float thickness, bool anti_aliased);
     void  AddConvexPolyFilled(const ImVec2* points, const int num_points, ImU32 col, bool anti_aliased);
     void  AddBezierCurve(const ImVec2& pos0, const ImVec2& cp0, const ImVec2& cp1, const ImVec2& pos1, ImU32 col, float thickness, int num_segments = 0);

    
    inline    void  PathClear()                                                 { _Path.resize(0); }
    inline    void  PathLineTo(const ImVec2& pos)                               { _Path.push_back(pos); }
    inline    void  PathLineToMergeDuplicate(const ImVec2& pos)                 { if (_Path.Size == 0 || memcmp(&_Path[_Path.Size-1], &pos, 8) != 0) _Path.push_back(pos); }
    inline    void  PathFillConvex(ImU32 col)                                   { AddConvexPolyFilled(_Path.Data, _Path.Size, col, true); PathClear(); }
    inline    void  PathStroke(ImU32 col, bool closed, float thickness = 1.0f)  { AddPolyline(_Path.Data, _Path.Size, col, closed, thickness, true); PathClear(); }
     void  PathArcTo(const ImVec2& centre, float radius, float a_min, float a_max, int num_segments = 10);
     void  PathArcToFast(const ImVec2& centre, float radius, int a_min_of_12, int a_max_of_12);                                
     void  PathBezierCurveTo(const ImVec2& p1, const ImVec2& p2, const ImVec2& p3, int num_segments = 0);
     void  PathRect(const ImVec2& rect_min, const ImVec2& rect_max, float rounding = 0.0f, int rounding_corners_flags = ~0);   

    
    
    
     void  ChannelsSplit(int channels_count);
     void  ChannelsMerge();
     void  ChannelsSetCurrent(int channel_index);

    
     void  AddCallback(ImDrawCallback callback, void* callback_data);  
     void  AddDrawCmd();                                               

    
    
     void  Clear();
     void  ClearFreeMemory();
     void  PrimReserve(int idx_count, int vtx_count);
     void  PrimRect(const ImVec2& a, const ImVec2& b, ImU32 col);      
     void  PrimRectUV(const ImVec2& a, const ImVec2& b, const ImVec2& uv_a, const ImVec2& uv_b, ImU32 col);
     void  PrimQuadUV(const ImVec2& a, const ImVec2& b, const ImVec2& c, const ImVec2& d, const ImVec2& uv_a, const ImVec2& uv_b, const ImVec2& uv_c, const ImVec2& uv_d, ImU32 col);
    inline    void  PrimWriteVtx(const ImVec2& pos, const ImVec2& uv, ImU32 col){ _VtxWritePtr->pos = pos; _VtxWritePtr->uv = uv; _VtxWritePtr->col = col; _VtxWritePtr++; _VtxCurrentIdx++; }
    inline    void  PrimWriteIdx(ImDrawIdx idx)                                 { *_IdxWritePtr = idx; _IdxWritePtr++; }
    inline    void  PrimVtx(const ImVec2& pos, const ImVec2& uv, ImU32 col)     { PrimWriteIdx((ImDrawIdx)_VtxCurrentIdx); PrimWriteVtx(pos, uv, col); }
     void  UpdateClipRect();
     void  UpdateTextureID();
};


struct ImDrawData
{
    bool            Valid;                  
    ImDrawList**    CmdLists;
    int             CmdListsCount;
    int             TotalVtxCount;          
    int             TotalIdxCount;          

    
    ImDrawData() { Valid = false; CmdLists = 0; CmdListsCount = TotalVtxCount = TotalIdxCount = 0; }
     void DeIndexAllBuffers();               
     void ScaleClipRects(const ImVec2& sc);  
};

struct ImFontConfig
{
    void*           FontData;                   
    int             FontDataSize;               
    bool            FontDataOwnedByAtlas;       
    int             FontNo;                     
    float           SizePixels;                 
    int             OversampleH, OversampleV;   
    bool            PixelSnapH;                 
    ImVec2          GlyphExtraSpacing;          
    const ImWchar*  GlyphRanges;                
    bool            MergeMode;                  
    bool            MergeGlyphCenterV;          

    
    char            Name[32];                               
    ImFont*         DstFont;

     ImFontConfig();
};










struct ImFontAtlas
{
     ImFontAtlas();
     ~ImFontAtlas();
     ImFont*           AddFont(const ImFontConfig* font_cfg);
     ImFont*           AddFontDefault(const ImFontConfig* font_cfg = 0);
     ImFont*           AddFontFromFileTTF(const char* filename, float size_pixels, const ImFontConfig* font_cfg = 0, const ImWchar* glyph_ranges = 0);
     ImFont*           AddFontFromMemoryTTF(void* ttf_data, int ttf_size, float size_pixels, const ImFontConfig* font_cfg = 0, const ImWchar* glyph_ranges = 0);                                        
     ImFont*           AddFontFromMemoryCompressedTTF(const void* compressed_ttf_data, int compressed_ttf_size, float size_pixels, const ImFontConfig* font_cfg = 0, const ImWchar* glyph_ranges = 0);  
     ImFont*           AddFontFromMemoryCompressedBase85TTF(const char* compressed_ttf_data_base85, float size_pixels, const ImFontConfig* font_cfg = 0, const ImWchar* glyph_ranges = 0);              
     void              ClearTexData();             
     void              ClearInputData();           
     void              ClearFonts();               
     void              Clear();                    

    
    
    
    
    
     void              GetTexDataAsAlpha8(unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel = 0);  
     void              GetTexDataAsRGBA32(unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel = 0);  
    void                        SetTexID(void* id)  { TexID = id; }

    
    
     const ImWchar*    GetGlyphRangesDefault();    
     const ImWchar*    GetGlyphRangesKorean();     
     const ImWchar*    GetGlyphRangesJapanese();   
     const ImWchar*    GetGlyphRangesChinese();    
     const ImWchar*    GetGlyphRangesCyrillic();   
     const ImWchar*    GetGlyphRangesThai();       

    
    
    void*                       TexID;              
    unsigned char*              TexPixelsAlpha8;    
    unsigned int*               TexPixelsRGBA32;    
    int                         TexWidth;           
    int                         TexHeight;          
    int                         TexDesiredWidth;    
    ImVec2                      TexUvWhitePixel;    
    ImVector<ImFont*>           Fonts;              

    
    ImVector<ImFontConfig>      ConfigData;         
     bool              Build();            
     void              RenderCustomTexData(int pass, void* rects);
};



struct ImFont
{
    struct Glyph
    {
        ImWchar                 Codepoint;
        float                   XAdvance;
        float                   X0, Y0, X1, Y1;
        float                   U0, V0, U1, V1;     
    };

    
    float                       FontSize;           
    float                       Scale;              
    ImVec2                      DisplayOffset;      
    ImVector<Glyph>             Glyphs;             
    ImVector<float>             IndexXAdvance;      
    ImVector<unsigned short>    IndexLookup;        
    const Glyph*                FallbackGlyph;      
    float                       FallbackXAdvance;   
    ImWchar                     FallbackChar;       

    
    short                       ConfigDataCount;    
    ImFontConfig*               ConfigData;         
    ImFontAtlas*                ContainerAtlas;     
    float                       Ascent, Descent;    
    int                         MetricsTotalSurface;

    
     ImFont();
     ~ImFont();
     void              Clear();
     void              BuildLookupTable();
     const Glyph*      FindGlyph(ImWchar c) const;
     void              SetFallbackChar(ImWchar c);
    float                       GetCharAdvance(ImWchar c) const     { return ((int)c < IndexXAdvance.Size) ? IndexXAdvance[(int)c] : FallbackXAdvance; }
    bool                        IsLoaded() const                    { return ContainerAtlas != 0; }

    
    
     ImVec2            CalcTextSizeA(float size, float max_width, float wrap_width, const char* text_begin, const char* text_end = 0, const char** remaining = 0) const; 
     const char*       CalcWordWrapPositionA(float scale, const char* text, const char* text_end, float wrap_width) const;
     void              RenderChar(ImDrawList* draw_list, float size, ImVec2 pos, ImU32 col, unsigned short c) const;
     void              RenderText(ImDrawList* draw_list, float size, ImVec2 pos, ImU32 col, const ImVec4& clip_rect, const char* text_begin, const char* text_end, float wrap_width = 0.0f, bool cpu_fine_clip = false) const;

    
     void              GrowIndex(int new_size);
     void              AddRemapChar(ImWchar dst, ImWchar src, bool overwrite_dst = true); 
};



#line 1398 "c:\\biblioteki\\imgui-sfml\\imgui.h"





#line 16 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"


#line 1 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"







#pragma once





#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"







#pragma once



#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"









#pragma once


#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"







#pragma once



__pragma(pack(push, 8)) extern "C" {



#line 17 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"




#line 22 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"
    
#line 24 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"


    
        
    



#line 33 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"
#line 34 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"














    








#line 58 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"




#line 63 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"

    
        


            #pragma detect_mismatch("_CRT_STDIO_ISO_WIDE_SPECIFIERS", "0")
        #line 70 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"
    #line 71 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"
#line 72 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"






#line 79 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"


    
    
       
    __declspec(noinline) __inline unsigned __int64* __cdecl __local_stdio_printf_options(void)
    {
        static unsigned __int64 _OptionsStorage;
        return &_OptionsStorage;
    }

    
    
       
    __declspec(noinline) __inline unsigned __int64* __cdecl __local_stdio_scanf_options(void)
    {
        static unsigned __int64 _OptionsStorage;
        return &_OptionsStorage;
    }
#line 99 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"



#line 103 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_stdio_config.h"



















} __pragma(pack(pop))
#line 14 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

__pragma(pack(push, 8)) extern "C" {








    
    typedef struct _iobuf
    {
        void* _Placeholder;
    } FILE;
#line 30 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

__declspec(dllimport) FILE* __cdecl __acrt_iob_func(unsigned _Ix);










    
    
    
    
    
    
    __declspec(dllimport) wint_t __cdecl fgetwc(
          FILE* _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _fgetwchar(void);

    
    __declspec(dllimport) wint_t __cdecl fputwc(
             wchar_t _Character,
          FILE*   _Stream);

    
    __declspec(dllimport) wint_t __cdecl _fputwchar(
          wchar_t _Character
        );

     
    __declspec(dllimport) wint_t __cdecl getwc(
          FILE* _Stream
        );

     
    __declspec(dllimport) wint_t __cdecl getwchar(void);


    
     
    __declspec(dllimport) wchar_t* __cdecl fgetws(
          wchar_t* _Buffer,
                                  int      _BufferCount,
                               FILE*    _Stream
        );

    
    __declspec(dllimport) int __cdecl fputws(
           wchar_t const* _Buffer,
          FILE*          _Stream
        );

    
     
    __declspec(dllimport) wchar_t* __cdecl _getws_s(
          wchar_t* _Buffer,
                                  size_t   _BufferCount
        );

    extern "C++" { template <size_t _Size> inline   wchar_t* __cdecl _getws_s( wchar_t (&_Buffer)[_Size]) throw() { return _getws_s(_Buffer, _Size); } }
#line 100 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __declspec(dllimport) wint_t __cdecl putwc(
             wchar_t _Character,
          FILE*   _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl putwchar(
          wchar_t _Character
        );

    
    __declspec(dllimport) int __cdecl _putws(
          wchar_t const* _Buffer
        );

    
    __declspec(dllimport) wint_t __cdecl ungetwc(
             wint_t _Character,
          FILE*  _Stream
        );

     
    __declspec(dllimport) FILE * __cdecl _wfdopen(
            int            _FileHandle,
          wchar_t const* _Mode
        );

      
    __declspec(dllimport) FILE* __cdecl _wfopen(
          wchar_t const* _FileName,
          wchar_t const* _Mode
        );

    
    __declspec(dllimport) errno_t __cdecl _wfopen_s(
          FILE**         _Stream,
                             wchar_t const* _FileName,
                             wchar_t const* _Mode
        );

     
    
    __declspec(dllimport) FILE* __cdecl _wfreopen(
           wchar_t const* _FileName,
           wchar_t const* _Mode,
          FILE*          _OldStream
        );

    
    __declspec(dllimport) errno_t __cdecl _wfreopen_s(
          FILE**         _Stream,
                             wchar_t const* _FileName,
                             wchar_t const* _Mode,
                            FILE*          _OldStream
        );

     
    __declspec(dllimport) FILE* __cdecl _wfsopen(
          wchar_t const* _FileName,
          wchar_t const* _Mode,
            int            _ShFlag
        );

    __declspec(dllimport) void __cdecl _wperror(
          wchar_t const* _ErrorMessage
        );

    

         
        __declspec(dllimport) FILE* __cdecl _wpopen(
              wchar_t const* _Command,
              wchar_t const* _Mode
            );

    #line 178 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    __declspec(dllimport) int __cdecl _wremove(
          wchar_t const* _FileName
        );

    
    

     
    __declspec(dllimport) __declspec(allocator) wchar_t* __cdecl _wtempnam(
          wchar_t const* _Directory,
          wchar_t const* _FilePrefix
        );

    

     
    
    __declspec(dllimport) errno_t __cdecl _wtmpnam_s(
          wchar_t* _Buffer,
                                  size_t   _BufferCount
        );

    extern "C++" { template <size_t _Size> inline   errno_t __cdecl _wtmpnam_s( wchar_t (&_Buffer)[_Size]) throw() { return _wtmpnam_s(_Buffer, _Size); } }
#line 206 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     __declspec(dllimport)  wchar_t* __cdecl _wtmpnam(  wchar_t *_Buffer);
#line 212 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"



    
    
    
    
    
    
    __declspec(dllimport) wint_t __cdecl _fgetwc_nolock(
          FILE* _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _fputwc_nolock(
             wchar_t _Character,
          FILE*   _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _getwc_nolock(
          FILE* _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _putwc_nolock(
             wchar_t _Character,
          FILE*   _Stream
        );

    
    __declspec(dllimport) wint_t __cdecl _ungetwc_nolock(
             wint_t _Character,
          FILE*  _Stream
        );

    



#line 253 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"



    
    





    
    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vfwprintf(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    
    __declspec(dllimport) int __cdecl __stdio_common_vfwprintf_s(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    
    __declspec(dllimport) int __cdecl __stdio_common_vfwprintf_p(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    
    __inline int __cdecl _vfwprintf_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 305 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vfwprintf((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    #line 309 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl vfwprintf(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 319 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_l(_Stream, _Format, 0, _ArgList);
    }
    #line 323 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vfwprintf_s_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 334 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vfwprintf_s((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    #line 338 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl vfwprintf_s(
                                    FILE*          const _Stream,
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    

#line 350 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            return _vfwprintf_s_l(_Stream, _Format, 0, _ArgList);
        }
    #line 354 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 356 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vfwprintf_p_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 367 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vfwprintf_p((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    #line 371 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vfwprintf_p(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 381 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_p_l(_Stream, _Format, 0, _ArgList);
    }
    #line 385 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vwprintf_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 395 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    #line 399 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl vwprintf(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 408 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
    }
    #line 412 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vwprintf_s_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 422 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    #line 426 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl vwprintf_s(
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    

#line 437 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            return _vfwprintf_s_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        }
    #line 441 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 443 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vwprintf_p_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 453 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    #line 457 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vwprintf_p(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 466 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwprintf_p_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
    }
    #line 470 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _fwprintf_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 480 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 489 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl fwprintf(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
        ...)
    

#line 498 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 507 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _fwprintf_s_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 517 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_s_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 526 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl fwprintf_s(
                                    FILE*          const _Stream,
                wchar_t const* const _Format,
            ...)
    

#line 537 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfwprintf_s_l(_Stream, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 546 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 548 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _fwprintf_p_l(
                                          FILE*          const _Stream,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 558 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_p_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 567 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _fwprintf_p(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
        ...)
    

#line 576 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_p_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 585 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _wprintf_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 594 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 603 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl wprintf(
            wchar_t const* const _Format,
        ...)
    

#line 611 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 620 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _wprintf_s_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 629 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 638 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl wprintf_s(
                wchar_t const* const _Format,
            ...)
    

#line 648 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfwprintf_s_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 657 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 659 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _wprintf_p_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 668 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 677 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _wprintf_p(
            wchar_t const* const _Format,
        ...)
    

#line 685 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwprintf_p_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 694 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"


    
    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vfwscanf(
                                            unsigned __int64 _Options,
                                         FILE*            _Stream,
            wchar_t const*   _Format,
                                        _locale_t        _Locale,
                                               va_list          _ArgList
        );

    
    __inline int __cdecl _vfwscanf_l(
          FILE*                                const _Stream,
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    

#line 720 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vfwscanf(
            (*__local_stdio_scanf_options ()),
            _Stream, _Format, _Locale, _ArgList);
    }
    #line 726 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl vfwscanf(
          FILE*                                const _Stream,
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 736 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwscanf_l(_Stream, _Format, 0, _ArgList);
    }
    #line 740 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vfwscanf_s_l(
                                FILE*          const _Stream,
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    

#line 751 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vfwscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Stream, _Format, _Locale, _ArgList);
    }
    #line 757 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl vfwscanf_s(
                                    FILE*          const _Stream,
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    

#line 769 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            return _vfwscanf_s_l(_Stream, _Format, 0, _ArgList);
        }
    #line 773 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 775 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    __inline int __cdecl _vwscanf_l(
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    

#line 784 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    }
    #line 788 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl vwscanf(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 797 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwscanf_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
    }
    #line 801 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _vwscanf_s_l(
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    

#line 811 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vfwscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    }
    #line 815 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl vwscanf_s(
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    

#line 826 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            return _vfwscanf_s_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
        }
    #line 830 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 832 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    __inline int __cdecl _fwscanf_l(
                                         FILE*          const _Stream,
            wchar_t const* const _Format,
                                        _locale_t      const _Locale,
        ...)
    

#line 842 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwscanf_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 851 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

      
    __inline int __cdecl fwscanf(
                               FILE*          const _Stream,
            wchar_t const* const _Format,
        ...)
    

#line 860 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwscanf_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 869 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _fwscanf_s_l(
                                           FILE*          const _Stream,
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
        ...)
    

#line 879 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwscanf_s_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 888 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl fwscanf_s(
                                     FILE*          const _Stream,
                wchar_t const* const _Format,
            ...)
    

#line 899 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfwscanf_s_l(_Stream, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 908 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 910 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    __inline int __cdecl _wscanf_l(
            wchar_t const* const _Format,
                                        _locale_t      const _Locale,
        ...)
    

#line 919 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 928 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

      
    __inline int __cdecl wscanf(
            wchar_t const* const _Format,
        ...)
    

#line 936 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwscanf_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 945 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    
    __inline int __cdecl _wscanf_s_l(
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
        ...)
    

#line 954 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfwscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 963 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

        
        __inline int __cdecl wscanf_s(
                wchar_t const* const _Format,
            ...)
    

#line 973 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfwscanf_s_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 982 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 984 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"



    
    
    
    
    
    
        



    

#line 1000 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __declspec(dllimport) int __cdecl __stdio_common_vswprintf(
                                             unsigned __int64 _Options,
                 wchar_t*         _Buffer,
                                             size_t           _BufferCount,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    
    __declspec(dllimport) int __cdecl __stdio_common_vswprintf_s(
                                             unsigned __int64 _Options,
                     wchar_t*         _Buffer,
                                             size_t           _BufferCount,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    
    __declspec(dllimport) int __cdecl __stdio_common_vsnwprintf_s(
                                             unsigned __int64 _Options,
                 wchar_t*         _Buffer,
                                             size_t           _BufferCount,
                                             size_t           _MaxCount,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    
    __declspec(dllimport) int __cdecl __stdio_common_vswprintf_p(
                                             unsigned __int64 _Options,
                     wchar_t*         _Buffer,
                                             size_t           _BufferCount,
            wchar_t const*   _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
     
    __inline int __cdecl _vsnwprintf_l(
            wchar_t*       const _Buffer,
                                                  size_t         const _BufferCount,
                 wchar_t const* const _Format,
                                              _locale_t      const _Locale,
                                                     va_list              _ArgList
        )
    

#line 1058 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vswprintf(
            (*__local_stdio_printf_options()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1066 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #pragma warning(push)
    #pragma warning(disable: 4793)

     
    
    __inline int __cdecl _vsnwprintf_s_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                                       size_t         const _MaxCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
                                                          va_list              _ArgList
        )
    

#line 1083 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vsnwprintf_s(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _MaxCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1091 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vsnwprintf_s(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                                       size_t         const _MaxCount,
                                wchar_t const* const _Format,
                                                          va_list              _ArgList
        )
    

#line 1104 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vsnwprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
    }
    #line 1108 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     __inline   int __cdecl _snwprintf(    wchar_t *_Buffer,   size_t _BufferCount,     wchar_t const* _Format, ...);  __inline   int __cdecl _vsnwprintf(    wchar_t *_Buffer,   size_t _BufferCount,     wchar_t const* _Format, va_list _Args);
#line 1117 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #pragma warning(pop)

     
     
    __inline int __cdecl _vsnwprintf(
            wchar_t*       _Buffer,
                                                  size_t         _BufferCount,
                           wchar_t const* _Format,
                                                     va_list        _ArgList
        )
    

#line 1131 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        #pragma warning(push)
        #pragma warning(disable: 4996) 
        return _vsnwprintf_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        #pragma warning(pop)
    }
    #line 1138 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    extern "C++" { template <size_t _Size> inline   int __cdecl _vsnwprintf_s( wchar_t (&_Buffer)[_Size],   size_t _BufferCount,     wchar_t const* _Format, va_list _ArgList) throw() { return _vsnwprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } }
#line 1147 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf_c_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
                                                          va_list              _ArgList
        )
    

#line 1160 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vswprintf(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1168 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf_c(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
                                                          va_list              _ArgList
        )
    

#line 1180 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vswprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    #line 1184 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
                                                          va_list              _ArgList
        )
    

#line 1197 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        #pragma warning(push)
        #pragma warning(disable: 4996) 
        return _vswprintf_c_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        #pragma warning(pop)
    }
    #line 1204 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl __vswprintf_l(
                  wchar_t*       const _Buffer,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 1216 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vswprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    #line 1220 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf(
           wchar_t*       const _Buffer,
               wchar_t const* const _Format,
                                         va_list              _ArgList
        )
    

#line 1231 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vswprintf_l(_Buffer, (size_t)-1, _Format, 0, _ArgList);
    }
    #line 1235 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl vswprintf(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                          va_list              _ArgList
        )
    

#line 1247 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vswprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    #line 1251 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf_s_l(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                  wchar_t const* const _Format,
                                               _locale_t      const _Locale,
                                                      va_list              _ArgList
        )
    

#line 1264 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vswprintf_s(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1272 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

         
        __inline int __cdecl vswprintf_s(
               wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
                                                          va_list              _ArgList
            )
    

#line 1285 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            return _vswprintf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        }
    #line 1289 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 1291 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    extern "C++" { template <size_t _Size> inline   int __cdecl vswprintf_s( wchar_t (&_Buffer)[_Size],     wchar_t const* _Format, va_list _ArgList) throw() { return vswprintf_s(_Buffer, _Size, _Format, _ArgList); } }
#line 1299 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf_p_l(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                  wchar_t const* const _Format,
                                               _locale_t      const _Locale,
                                                      va_list              _ArgList
        )
    

#line 1312 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vswprintf_p(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1320 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswprintf_p(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                            wchar_t const* const _Format,
                                                      va_list              _ArgList
        )
    

#line 1332 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vswprintf_p_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    #line 1336 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _vscwprintf_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 1347 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vswprintf(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            0, 0, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1355 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _vscwprintf(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 1365 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vscwprintf_l(_Format, 0, _ArgList);
    }
    #line 1369 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _vscwprintf_p_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
                                                va_list              _ArgList
        )
    

#line 1380 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int const _Result = __stdio_common_vswprintf_p(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            0, 0, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1388 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _vscwprintf_p(
            wchar_t const* const _Format,
                                      va_list              _ArgList
        )
    

#line 1398 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vscwprintf_p_l(_Format, 0, _ArgList);
    }
    #line 1402 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl __swprintf_l(
                  wchar_t*       const _Buffer,
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 1413 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = __vswprintf_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1422 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swprintf_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
        ...)
    

#line 1434 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_c_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1443 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swprintf(
           wchar_t*       const _Buffer,
               wchar_t const* const _Format,
        ...)
    

#line 1453 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = __vswprintf_l(_Buffer, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1462 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl swprintf(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
        ...)
    

#line 1473 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1482 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #pragma warning(push)
    
    
    #pragma warning(disable:4793 4996)

     __inline   int __cdecl __swprintf_l(   wchar_t *_Buffer,     wchar_t const* _Format,   _locale_t _Locale, ...);  __inline   int __cdecl __vswprintf_l(   wchar_t *_Buffer,     wchar_t const* _Format,   _locale_t _Locale, va_list _Args);
#line 1496 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     __inline   int __cdecl _swprintf(   wchar_t *_Buffer,     wchar_t const* _Format, ...);  __inline   int __cdecl _vswprintf(   wchar_t *_Buffer,     wchar_t const* _Format, va_list _Args);
#line 1503 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #pragma warning(pop)

     
    
    __inline int __cdecl _swprintf_s_l(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                  wchar_t const* const _Format,
                                               _locale_t      const _Locale,
        ...)
    

#line 1517 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_s_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1526 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

         
        __inline int __cdecl swprintf_s(
               wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
            ...)
    

#line 1538 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vswprintf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 1547 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 1549 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline   int __cdecl swprintf_s( wchar_t (&_Buffer)[_Size],     wchar_t const* _Format, ...) throw() { va_list _ArgList; ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1)))))); return vswprintf_s(_Buffer, _Size, _Format, _ArgList); } __pragma(warning(pop)); }
#line 1556 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swprintf_p_l(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                  wchar_t const* const _Format,
                                               _locale_t      const _Locale,
        ...)
    

#line 1568 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_p_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1577 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swprintf_p(
           wchar_t*       const _Buffer,
                                                   size_t         const _BufferCount,
                            wchar_t const* const _Format,
        ...)
    

#line 1588 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_p_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1597 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swprintf_c_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
        ...)
    

#line 1609 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_c_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1618 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swprintf_c(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                wchar_t const* const _Format,
        ...)
    

#line 1629 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1638 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _snwprintf_l(
            wchar_t*       const _Buffer,
                                                  size_t         const _BufferCount,
                 wchar_t const* const _Format,
                                              _locale_t      const _Locale,
        ...)
    

#line 1650 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsnwprintf_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1664 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _snwprintf(
            wchar_t*       _Buffer,
                                                  size_t         _BufferCount,
                           wchar_t const* _Format,
        ...)
    

#line 1675 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsnwprintf_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1689 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _snwprintf_s_l(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                                       size_t         const _MaxCount,
                      wchar_t const* const _Format,
                                                   _locale_t      const _Locale,
        ...)
    

#line 1702 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnwprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1711 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _snwprintf_s(
           wchar_t*       const _Buffer,
                                                       size_t         const _BufferCount,
                                                       size_t         const _MaxCount,
                                wchar_t const* const _Format,
        ...)
    

#line 1723 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnwprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1732 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline   int __cdecl _snwprintf_s( wchar_t (&_Buffer)[_Size],   size_t _BufferCount,     wchar_t const* _Format, ...) throw() { va_list _ArgList; ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1)))))); return _vsnwprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } __pragma(warning(pop)); }
#line 1740 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    __inline int __cdecl _scwprintf_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 1749 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscwprintf_l(_Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1758 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _scwprintf(
            wchar_t const* const _Format,
        ...)
    

#line 1767 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscwprintf_l(_Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1776 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _scwprintf_p_l(
            wchar_t const* const _Format,
                                         _locale_t      const _Locale,
        ...)
    

#line 1786 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscwprintf_p_l(_Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1795 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _scwprintf_p(
            wchar_t const* const _Format,
        ...)
    

#line 1804 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscwprintf_p_l(_Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1813 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"


    
        #pragma warning(push)
        #pragma warning(disable: 4141 4412 4793 4996 6054)

        

            extern "C++" __declspec(deprecated("function has been changed to conform with the ISO C standard, " "adding an extra character count parameter. To use the traditional " "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.")) 
            inline int swprintf(
                           wchar_t*       const _Buffer,
                    wchar_t const* const _Format,
                ...) throw()
            {
                int _Result;
                va_list _ArgList;
                ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
                #pragma warning(suppress: 28719)
                _Result = vswprintf(_Buffer, 2147483647, _Format, _ArgList);
                ((void)(_ArgList = (va_list)0));
                return _Result;
            }

            extern "C++" __declspec(deprecated("function has been changed to conform with the ISO C standard, " "adding an extra character count parameter. To use the traditional " "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.")) 
            inline int __cdecl vswprintf(
                           wchar_t*       const _Buffer,
                    wchar_t const* const _Format,
                                              va_list              _ArgList
                ) throw()
            {
                #pragma warning(suppress: 28719)
                return vswprintf(_Buffer, 2147483647, _Format, _ArgList);
            }

            extern "C++" __declspec(deprecated("function has been changed to conform with the ISO C standard, " "adding an extra character count parameter. To use the traditional " "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.")) 
            inline int _swprintf_l(
                                     wchar_t*       const _Buffer,
                    wchar_t const* const _Format,
                                                 _locale_t      const _Locale,
                ...) throw()
            {
                int _Result;
                va_list _ArgList;
                ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
                _Result = _vswprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);
                ((void)(_ArgList = (va_list)0));
                return _Result;
            }

            extern "C++" __declspec(deprecated("function has been changed to conform with the ISO C standard, " "adding an extra character count parameter. To use the traditional " "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.")) 
            inline int __cdecl _vswprintf_l(
                                     wchar_t*       const _Buffer,
                    wchar_t const* const _Format,
                                                 _locale_t      const _Locale,
                                                        va_list              _ArgList
                ) throw()
            {
                return _vswprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);
            }

        #line 1874 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

        #pragma warning(pop)
    #line 1877 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    




#line 1884 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"


    
    
    
    
    
     
    __declspec(dllimport) int __cdecl __stdio_common_vswscanf(
                                            unsigned __int64 _Options,
                  wchar_t const*   _Buffer,
                                            size_t           _BufferCount,
            wchar_t const*   _Format,
                                        _locale_t        _Locale,
                                               va_list          _ArgList
        );

     
    
    __inline int __cdecl _vswscanf_l(
                                 wchar_t const* const _Buffer,
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    

#line 1912 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vswscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    #line 1918 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl vswscanf(
                                 wchar_t const* _Buffer,
            wchar_t const* _Format,
                                      va_list        _ArgList
        )
    

#line 1929 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return _vswscanf_l(_Buffer, _Format, 0, _ArgList);
    }
    #line 1933 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vswscanf_s_l(
                                 wchar_t const* const _Buffer,
            wchar_t const* const _Format,
                               _locale_t      const _Locale,
                                      va_list              _ArgList
        )
    

#line 1945 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vswscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    #line 1951 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

         
        
        __inline int __cdecl vswscanf_s(
                                     wchar_t const* const _Buffer,
                wchar_t const* const _Format,
                                          va_list              _ArgList
            )
    

#line 1964 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            return _vswscanf_s_l(_Buffer, _Format, 0, _ArgList);
        }
    #line 1968 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 1970 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    extern "C++" { template <size_t _Size> inline   int __cdecl vswscanf_s(  wchar_t (&_Buffer)[_Size],     wchar_t const* _Format, va_list _ArgList) throw() { return vswscanf_s(_Buffer, _Size, _Format, _ArgList); } }
#line 1978 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _vsnwscanf_l(
                  wchar_t const* const _Buffer,
                                            size_t         const _BufferCount,
            wchar_t const* const _Format,
                                        _locale_t      const _Locale,
                                               va_list              _ArgList
        )
    

#line 1991 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vswscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);
    }
    #line 1997 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _vsnwscanf_s_l(
                    wchar_t const* const _Buffer,
                                              size_t         const _BufferCount,
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
                                                 va_list              _ArgList
        )
    

#line 2010 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        return __stdio_common_vswscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);
    }
    #line 2016 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _swscanf_l(
                                          wchar_t const* const _Buffer,
            wchar_t const* const _Format,
                                        _locale_t            _Locale,
        ...)
    

#line 2027 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswscanf_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2036 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
      
    __inline int __cdecl swscanf(
                                wchar_t const* const _Buffer,
            wchar_t const* const _Format,
        ...)
    

#line 2046 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswscanf_l(_Buffer, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2055 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _swscanf_s_l(
                                            wchar_t const* const _Buffer,
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
        ...)
    

#line 2066 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vswscanf_s_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2075 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    

         
        
        __inline int __cdecl swscanf_s(
                                      wchar_t const* const _Buffer,
                wchar_t const* const _Format,
            ...)
    

#line 2087 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vswscanf_s_l(_Buffer, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 2096 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    #line 2098 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _snwscanf_l(
                  wchar_t const* const _Buffer,
                                            size_t         const _BufferCount,
            wchar_t const* const _Format,
                                        _locale_t      const _Locale,
        ...)
    

#line 2110 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsnwscanf_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2124 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
     
    __inline int __cdecl _snwscanf(
            wchar_t const* const _Buffer,
                                      size_t         const _BufferCount,
                wchar_t const* const _Format,
        ...)
    

#line 2135 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsnwscanf_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2149 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _snwscanf_s_l(
                    wchar_t const* const _Buffer,
                                              size_t         const _BufferCount,
            wchar_t const* const _Format,
                                          _locale_t      const _Locale,
        ...)
    

#line 2161 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnwscanf_s_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2170 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

     
    
    __inline int __cdecl _snwscanf_s(
             wchar_t const* const _Buffer,
                                       size_t         const _BufferCount,
               wchar_t const* const _Format,
        ...)
    

#line 2181 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnwscanf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2190 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"

    


#line 2195 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdio.h"



} __pragma(pack(pop))
#line 13 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

__pragma(pack(push, 8)) extern "C" {































    
#line 48 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"















    
    
#line 66 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"


typedef __int64 fpos_t;





    
    __declspec(dllimport) errno_t __cdecl _get_stream_buffer_pointers(
               FILE*   _Stream,
          char*** _Base,
          char*** _Pointer,
          int**   _Count
        );


    
    
    
    
    
    

        
        __declspec(dllimport) errno_t __cdecl clearerr_s(
              FILE* _Stream
            );

        
        __declspec(dllimport) errno_t __cdecl fopen_s(
              FILE**      _Stream,
                                 char const* _FileName,
                                 char const* _Mode
            );

        
         
        __declspec(dllimport) size_t __cdecl fread_s(
                void*  _Buffer,
                                    size_t _BufferSize,
                                                                            size_t _ElementSize,
                                                                            size_t _ElementCount,
                                                                         FILE*  _Stream
            );

        
        __declspec(dllimport) errno_t __cdecl freopen_s(
              FILE**      _Stream,
                                 char const* _FileName,
                                 char const* _Mode,
                                FILE*       _OldStream
            );

         
        __declspec(dllimport) char* __cdecl gets_s(
              char*   _Buffer,
                               rsize_t _Size
            );

        
        __declspec(dllimport) errno_t __cdecl tmpfile_s(
                FILE** _Stream
            );

         
        
        __declspec(dllimport) errno_t __cdecl tmpnam_s(
              char*   _Buffer,
                               rsize_t _Size
            );

    #line 139 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    __declspec(dllimport) void __cdecl clearerr(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl fclose(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _fcloseall(void);

     
    __declspec(dllimport) FILE* __cdecl _fdopen(
            int         _FileHandle,
          char const* _Mode
        );

     
    __declspec(dllimport) int __cdecl feof(
          FILE* _Stream
        );

     
    __declspec(dllimport) int __cdecl ferror(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl fflush(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl fgetc(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _fgetchar(void);

     
    
    __declspec(dllimport) int __cdecl fgetpos(
          FILE*   _Stream,
            fpos_t* _Position
        );

     
    
    __declspec(dllimport) char* __cdecl fgets(
          char* _Buffer,
                               int   _MaxCount,
                            FILE* _Stream
        );

     
    __declspec(dllimport) int __cdecl _fileno(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _flushall(void);

      
    __declspec(dllimport) FILE* __cdecl fopen(
          char const* _FileName,
          char const* _Mode
        );


     
    
    __declspec(dllimport) int __cdecl fputc(
             int   _Character,
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _fputchar(
          int _Character
        );

     
    
    __declspec(dllimport) int __cdecl fputs(
           char const* _Buffer,
          FILE*       _Stream
        );

    
    __declspec(dllimport) size_t __cdecl fread(
          void*  _Buffer,
                                                      size_t _ElementSize,
                                                      size_t _ElementCount,
                                                   FILE*  _Stream
        );

     
      
    __declspec(dllimport) FILE* __cdecl freopen(
           char const* _FileName,
           char const* _Mode,
          FILE*       _Stream
        );

     
    __declspec(dllimport) FILE* __cdecl _fsopen(
          char const* _FileName,
          char const* _Mode,
            int         _ShFlag
        );

     
    
    __declspec(dllimport) int __cdecl fsetpos(
          FILE*         _Stream,
             fpos_t const* _Position
        );

     
    
    __declspec(dllimport) int __cdecl fseek(
          FILE* _Stream,
             long  _Offset,
             int   _Origin
        );

     
    
    __declspec(dllimport) int __cdecl _fseeki64(
          FILE*   _Stream,
             __int64 _Offset,
             int     _Origin
        );

     
     
    __declspec(dllimport) long __cdecl ftell(
          FILE* _Stream
        );

     
     
    __declspec(dllimport) __int64 __cdecl _ftelli64(
          FILE* _Stream
        );

    
    __declspec(dllimport) size_t __cdecl fwrite(
          void const* _Buffer,
                                                    size_t      _ElementSize,
                                                    size_t      _ElementCount,
                                                 FILE*       _Stream
        );

     
     
    __declspec(dllimport) int __cdecl getc(
          FILE* _Stream
        );

     
    __declspec(dllimport) int __cdecl getchar(void);

     
    __declspec(dllimport) int __cdecl _getmaxstdio(void);

    extern "C++" { template <size_t _Size> inline char* __cdecl gets_s(char (&_Buffer)[_Size]) throw() { return gets_s(_Buffer, _Size); } }
#line 313 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __declspec(dllimport) int __cdecl _getw(
          FILE* _Stream
        );

    __declspec(dllimport) void __cdecl perror(
          char const* _ErrorMessage
        );

    

         
        
        __declspec(dllimport) int __cdecl _pclose(
              FILE* _Stream
            );

         
        __declspec(dllimport) FILE* __cdecl _popen(
              char const* _Command,
              char const* _Mode
            );

    #line 338 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __declspec(dllimport) int __cdecl putc(
             int   _Character,
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl putchar(
          int _Character
        );

    
    __declspec(dllimport) int __cdecl puts(
          char const* _Buffer
        );

     
    
    __declspec(dllimport) int __cdecl _putw(
             int   _Word,
          FILE* _Stream
        );

    __declspec(dllimport) int __cdecl remove(
          char const* _FileName
        );

     
    __declspec(dllimport) int __cdecl rename(
          char const* _OldFileName,
          char const* _NewFileName
        );

    __declspec(dllimport) int __cdecl _unlink(
          char const* _FileName
        );

    

        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_unlink" ". See online help for details."))
        __declspec(dllimport) int __cdecl unlink(
              char const* _FileName
            );

    #line 385 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    __declspec(dllimport) void __cdecl rewind(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _rmtmp(void);

    
    __declspec(dllimport) void __cdecl setbuf(
                                                      FILE* _Stream,
            char* _Buffer
        );

    
    __declspec(dllimport) int __cdecl _setmaxstdio(
          int _Maximum
        );

     
    
    __declspec(dllimport) int __cdecl setvbuf(
                               FILE*  _Stream,
            char*  _Buffer,
                                  int    _Mode,
                                  size_t _Size
        );

    


#line 417 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __declspec(dllimport) __declspec(allocator) char* __cdecl _tempnam(
          char const* _DirectoryName,
          char const* _FilePrefix
        );

    

#line 427 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

      
    __declspec(dllimport) FILE* __cdecl tmpfile(void);

    extern "C++" { template <size_t _Size> inline   errno_t __cdecl tmpnam_s( char (&_Buffer)[_Size]) throw() { return tmpnam_s(_Buffer, _Size); } }
#line 436 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

#pragma warning(push)
#pragma warning(disable: 28726) 
 __declspec(dllimport)  char* __cdecl tmpnam(  char *_Buffer);
#line 444 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
#pragma warning(pop)

     
    
    __declspec(dllimport) int __cdecl ungetc(
             int   _Character,
          FILE* _Stream
        );



    
    
    
    
    
    __declspec(dllimport) void __cdecl _lock_file(
          FILE* _Stream
        );

    __declspec(dllimport) void __cdecl _unlock_file(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl _fclose_nolock(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl _fflush_nolock(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl _fgetc_nolock(
          FILE* _Stream
        );

     
    
    __declspec(dllimport) int __cdecl _fputc_nolock(
             int   _Character,
          FILE* _Stream
        );

    
    __declspec(dllimport) size_t __cdecl _fread_nolock(
          void*  _Buffer,
                                                      size_t _ElementSize,
                                                      size_t _ElementCount,
                                                   FILE*  _Stream
        );

    
     
    __declspec(dllimport) size_t __cdecl _fread_nolock_s(
          void*  _Buffer,
                              size_t _BufferSize,
                                                                      size_t _ElementSize,
                                                                      size_t _ElementCount,
                                                                   FILE*  _Stream
        );

    
    __declspec(dllimport) int __cdecl _fseek_nolock(
          FILE* _Stream,
             long  _Offset,
             int   _Origin
        );

    
    __declspec(dllimport) int __cdecl _fseeki64_nolock(
          FILE*   _Stream,
             __int64 _Offset,
             int     _Origin
        );

     
    __declspec(dllimport) long __cdecl _ftell_nolock(
          FILE* _Stream
        );

     
    __declspec(dllimport) __int64 __cdecl _ftelli64_nolock(
          FILE* _Stream
        );

    
    __declspec(dllimport) size_t __cdecl _fwrite_nolock(
          void const* _Buffer,
                                                    size_t      _ElementSize,
                                                    size_t      _ElementCount,
                                                 FILE*       _Stream
        );

    
    __declspec(dllimport) int __cdecl _getc_nolock(
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _putc_nolock(
             int   _Character,
          FILE* _Stream
        );

    
    __declspec(dllimport) int __cdecl _ungetc_nolock(
             int   _Character,
          FILE* _Stream
        );

    
    
    
    



    













#line 582 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"



    __declspec(dllimport) int* __cdecl __p__commode(void);

    


        
    #line 592 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"



    
    

#line 599 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vfprintf(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    __declspec(dllimport) int __cdecl __stdio_common_vfprintf_s(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    __declspec(dllimport) int __cdecl __stdio_common_vfprintf_p(
                                             unsigned __int64 _Options,
                                          FILE*            _Stream,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

    
    __inline int __cdecl _vfprintf_l(
           FILE*       const _Stream,
            char const* const _Format,
          _locale_t   const _Locale,
                 va_list           _ArgList
        )
    

#line 640 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vfprintf((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    #line 644 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl vfprintf(
                                FILE*       const _Stream,
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 654 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_l(_Stream, _Format, 0, _ArgList);
    }
    #line 658 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vfprintf_s_l(
           FILE*       const _Stream,
            char const* const _Format,
          _locale_t   const _Locale,
                 va_list           _ArgList
        )
    

#line 669 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vfprintf_s((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    #line 673 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl vfprintf_s(
                                    FILE*       const _Stream,
                char const* const _Format,
                                          va_list           _ArgList
            )
    

#line 685 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vfprintf_s_l(_Stream, _Format, 0, _ArgList);
        }
    #line 689 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 691 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vfprintf_p_l(
           FILE*       const _Stream,
            char const* const _Format,
          _locale_t   const _Locale,
                 va_list           _ArgList
        )
    

#line 702 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vfprintf_p((*__local_stdio_printf_options()), _Stream, _Format, _Locale, _ArgList);
    }
    #line 706 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vfprintf_p(
                                FILE*       const _Stream,
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 716 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_p_l(_Stream, _Format, 0, _ArgList);
    }
    #line 720 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vprintf_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    

#line 730 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    #line 734 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl vprintf(
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 743 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
    }
    #line 747 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vprintf_s_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    

#line 757 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    #line 761 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl vprintf_s(
                char const* const _Format,
                                          va_list           _ArgList
            )
    

#line 772 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vfprintf_s_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        }
    #line 776 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 778 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vprintf_p_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    

#line 788 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    }
    #line 792 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vprintf_p(
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 801 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfprintf_p_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
    }
    #line 805 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _fprintf_l(
                                          FILE*       const _Stream,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 815 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 824 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl fprintf(
                                FILE*       const _Stream,
            char const* const _Format,
        ...)
    

#line 833 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 842 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    __declspec(dllimport) int __cdecl _set_printf_count_output(
          int _Value
        );

    __declspec(dllimport) int __cdecl _get_printf_count_output(void);

    
    __inline int __cdecl _fprintf_s_l(
                                          FILE*       const _Stream,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 858 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_s_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 867 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl fprintf_s(
                                    FILE*       const _Stream,
                char const* const _Format,
            ...)
    

#line 878 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfprintf_s_l(_Stream, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 887 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 889 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _fprintf_p_l(
                                          FILE*       const _Stream,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 899 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_p_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 908 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _fprintf_p(
                                FILE*       const _Stream,
            char const* const _Format,
        ...)
    

#line 917 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_p_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 926 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _printf_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 935 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 944 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl printf(
            char const* const _Format,
        ...)
    

#line 952 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 961 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _printf_s_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 970 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 979 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl printf_s(
                char const* const _Format,
            ...)
    

#line 989 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfprintf_s_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 998 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1000 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _printf_p_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 1009 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1018 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _printf_p(
            char const* const _Format,
        ...)
    

#line 1026 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfprintf_p_l((__acrt_iob_func(1)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1035 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"


    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vfscanf(
                                            unsigned __int64 _Options,
                                         FILE*            _Stream,
            char const*      _Format,
                                        _locale_t        _Locale,
                                               va_list          _Arglist
        );

    
    __inline int __cdecl _vfscanf_l(
                                FILE*       const _Stream,
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    

#line 1060 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vfscanf(
            (*__local_stdio_scanf_options ()),
            _Stream, _Format, _Locale, _ArgList);
    }
    #line 1066 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl vfscanf(
                                FILE*       const _Stream,
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 1076 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfscanf_l(_Stream, _Format, 0, _ArgList);
    }
    #line 1080 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vfscanf_s_l(
                                FILE*       const _Stream,
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    

#line 1091 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vfscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Stream, _Format, _Locale, _ArgList);
    }
    #line 1097 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"


    

        
        __inline int __cdecl vfscanf_s(
                                    FILE*       const _Stream,
                char const* const _Format,
                                          va_list           _ArgList
            )
    

#line 1110 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vfscanf_s_l(_Stream, _Format, 0, _ArgList);
        }
    #line 1114 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1116 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vscanf_l(
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    

#line 1126 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    }
    #line 1130 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl vscanf(
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 1139 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfscanf_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
    }
    #line 1143 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vscanf_s_l(
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    

#line 1153 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vfscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    }
    #line 1157 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl vscanf_s(
                char const* const _Format,
                                          va_list           _ArgList
            )
    

#line 1168 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vfscanf_s_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
        }
    #line 1172 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1174 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _fscanf_l(
                                         FILE*       const _Stream,
            char const* const _Format,
                                        _locale_t   const _Locale,
        ...)
    

#line 1184 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfscanf_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1193 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

      
    __inline int __cdecl fscanf(
                               FILE*       const _Stream,
            char const* const _Format,
        ...)
    

#line 1202 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfscanf_l(_Stream, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1211 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _fscanf_s_l(
                                           FILE*       const _Stream,
            char const* const _Format,
                                          _locale_t   const _Locale,
        ...)
    

#line 1221 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfscanf_s_l(_Stream, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1230 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl fscanf_s(
                                     FILE*       const _Stream,
                char const* const _Format,
            ...)
    

#line 1241 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfscanf_s_l(_Stream, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 1250 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1252 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _scanf_l(
            char const* const _Format,
                                        _locale_t   const _Locale,
        ...)
    

#line 1261 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1270 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

      
    __inline int __cdecl scanf(
            char const* const _Format,
        ...)
    

#line 1278 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfscanf_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1287 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _scanf_s_l(
            char const* const _Format,
                                          _locale_t   const _Locale,
        ...)
    

#line 1296 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vfscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1305 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl scanf_s(
                char const* const _Format,
            ...)
    

#line 1315 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vfscanf_s_l((__acrt_iob_func(0)), _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 1324 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1326 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"



    
    
    
    
    
     
    __declspec(dllimport) int __cdecl __stdio_common_vsprintf(
                                             unsigned __int64 _Options,
                 char*            _Buffer,
                                             size_t           _BufferCount,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    __declspec(dllimport) int __cdecl __stdio_common_vsprintf_s(
                                             unsigned __int64 _Options,
                     char*            _Buffer,
                                             size_t           _BufferCount,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    __declspec(dllimport) int __cdecl __stdio_common_vsnprintf_s(
                                             unsigned __int64 _Options,
                 char*            _Buffer,
                                             size_t           _BufferCount,
                                             size_t           _MaxCount,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
    __declspec(dllimport) int __cdecl __stdio_common_vsprintf_p(
                                             unsigned __int64 _Options,
                     char*            _Buffer,
                                             size_t           _BufferCount,
            char const*      _Format,
                                         _locale_t        _Locale,
                                                va_list          _ArgList
        );

     
     
    __inline int __cdecl _vsnprintf_l(
            char*       const _Buffer,
                                                  size_t      const _BufferCount,
                 char const* const _Format,
                                              _locale_t   const _Locale,
                                                     va_list           _ArgList
        )
    

#line 1387 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf(
            (*__local_stdio_printf_options()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1395 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsnprintf(
            char*       const _Buffer,
                                                 size_t      const _BufferCount,
                          char const* const _Format,
                                                    va_list           _ArgList
        )
    

#line 1407 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        #pragma warning(push)
        #pragma warning(disable: 4996) 
        return _vsnprintf_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        #pragma warning(pop)
    }
    #line 1414 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    








#line 1425 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl vsnprintf(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                char const* const _Format,
                                                          va_list           _ArgList
        )
    

#line 1437 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            _Buffer, _BufferCount, _Format, 0, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1445 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
     
    __inline int __cdecl _vsprintf_l(
           char*       const _Buffer,
                                    char const* const _Format,
                                  _locale_t   const _Locale,
                                         va_list           _ArgList
        )
    

#line 1457 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        #pragma warning(push)
        #pragma warning(disable: 4996) 
        return _vsnprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);
        #pragma warning(pop)
    }
    #line 1464 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
     
    __inline int __cdecl vsprintf(
           char*       const _Buffer,
               char const* const _Format,
                                         va_list           _ArgList
        )
    

#line 1475 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        #pragma warning(push)
        #pragma warning(disable: 4996) 
        return _vsnprintf_l(_Buffer, (size_t)-1, _Format, 0, _ArgList);
        #pragma warning(pop)
    }
    #line 1482 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsprintf_s_l(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                  char const* const _Format,
                                               _locale_t   const _Locale,
                                                      va_list           _ArgList
        )
    

#line 1495 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf_s(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1503 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

         
        
        __inline int __cdecl vsprintf_s(
               char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                char const* const _Format,
                                                          va_list           _ArgList
            )
    

#line 1517 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vsprintf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        }
    #line 1521 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

        extern "C++" { template <size_t _Size> inline   int __cdecl vsprintf_s( char (&_Buffer)[_Size],     char const* _Format, va_list _ArgList) throw() { return vsprintf_s(_Buffer, _Size, _Format, _ArgList); } }
#line 1529 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1531 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsprintf_p_l(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                  char const* const _Format,
                                               _locale_t   const _Locale,
                                                      va_list           _ArgList
        )
    

#line 1544 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf_p(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1552 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsprintf_p(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                            char const* const _Format,
                                                      va_list           _ArgList
        )
    

#line 1564 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vsprintf_p_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    #line 1568 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsnprintf_s_l(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                                       size_t      const _MaxCount,
                      char const* const _Format,
                                                   _locale_t   const _Locale,
                                                          va_list          _ArgList
        )
    

#line 1582 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsnprintf_s(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _MaxCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1590 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsnprintf_s(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                                       size_t      const _MaxCount,
                                char const* const _Format,
                                                          va_list           _ArgList
        )
    

#line 1603 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vsnprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
    }
    #line 1607 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    extern "C++" { template <size_t _Size> inline   int __cdecl _vsnprintf_s( char (&_Buffer)[_Size],   size_t _BufferCount,     char const* _Format, va_list _ArgList) throw() { return _vsnprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } }
#line 1616 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

         
        
        __inline int __cdecl vsnprintf_s(
               char*       const _Buffer,
                                                           size_t      const _BufferCount,
                                                           size_t      const _MaxCount,
                                    char const* const _Format,
                                                              va_list           _ArgList
            )
    

#line 1631 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vsnprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
        }
    #line 1635 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

        extern "C++" { template <size_t _Size> inline   int __cdecl vsnprintf_s( char (&_Buffer)[_Size],   size_t _BufferCount,     char const* _Format, va_list _ArgList) throw() { return vsnprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } }
#line 1644 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1646 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vscprintf_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    

#line 1656 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            0, 0, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1664 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _vscprintf(
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 1673 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vscprintf_l(_Format, 0, _ArgList);
    }
    #line 1677 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vscprintf_p_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    

#line 1687 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf_p(
            (*__local_stdio_printf_options()) | (1ULL << 1),
            0, 0, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1695 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _vscprintf_p(
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 1704 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vscprintf_p_l(_Format, 0, _ArgList);
    }
    #line 1708 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vsnprintf_c_l(
                   char*       const _Buffer,
                                             size_t      const _BufferCount,
            char const* const _Format,
                                         _locale_t   const _Locale,
                                                va_list           _ArgList
        )
    

#line 1720 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int const _Result = __stdio_common_vsprintf(
            (*__local_stdio_printf_options()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        return _Result < 0 ? -1 : _Result;
    }
    #line 1728 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _vsnprintf_c(
          char*       const _Buffer,
                                    size_t      const _BufferCount,
             char const* const _Format,
                                       va_list           _ArgList
        )
    

#line 1740 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vsnprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
    }
    #line 1744 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
     
    __inline int __cdecl _sprintf_l(
                  char*       const _Buffer,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 1755 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsprintf_l(_Buffer, _Format, _Locale, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1769 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl sprintf(
           char*       const _Buffer,
               char const* const _Format,
        ...)
    

#line 1779 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsprintf_l(_Buffer, _Format, 0, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1793 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #pragma warning(push)
    #pragma warning(disable: 4996)
    #pragma warning(disable: 28719) 
    #pragma warning(disable: 28726) 
       int __cdecl sprintf(  char *_Buffer,  char const* _Format, ...);    int __cdecl vsprintf(  char *_Buffer,  char const* _Format, va_list _Args);
#line 1804 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    #pragma warning(pop)

     
    
    __inline int __cdecl _sprintf_s_l(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                  char const* const _Format,
                                               _locale_t   const _Locale,
        ...)
    

#line 1817 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsprintf_s_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1826 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

         
        
        __inline int __cdecl sprintf_s(
               char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                char const* const _Format,
            ...)
    

#line 1839 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
            _Result = _vsprintf_s_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 1848 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 1850 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline   int __cdecl sprintf_s( char (&_Buffer)[_Size],     char const* _Format, ...) throw() { va_list _ArgList; ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1)))))); return vsprintf_s(_Buffer, _Size, _Format, _ArgList); } __pragma(warning(pop)); }
#line 1857 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _sprintf_p_l(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                  char const* const _Format,
                                               _locale_t   const _Locale,
        ...)
    

#line 1869 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsprintf_p_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1878 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _sprintf_p(
           char*       const _Buffer,
                                                   size_t      const _BufferCount,
                            char const* const _Format,
        ...)
    

#line 1889 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsprintf_p_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1898 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
     
    __inline int __cdecl _snprintf_l(
            char*       const _Buffer,
                                                  size_t      const _BufferCount,
                 char const* const _Format,
                                              _locale_t   const _Locale,
        ...)
    

#line 1910 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        #pragma warning(push)
        #pragma warning(disable: 4996) 
        _Result = _vsnprintf_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        #pragma warning(pop)

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1924 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    








#line 1935 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl snprintf(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                char const* const _Format,
        ...)
    

#line 1946 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    #pragma warning(suppress:28719)    
        _Result = vsnprintf(_Buffer, _BufferCount, _Format, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1956 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _snprintf(
            char*       const _Buffer,
                                                  size_t      const _BufferCount,
                           char const* const _Format,
        ...)
    

#line 1967 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
    #pragma warning(suppress:28719)    
        _Result = _vsnprintf(_Buffer, _BufferCount, _Format, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 1977 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

        int __cdecl _snprintf(    char *_Buffer,   size_t _BufferCount,     char const* _Format, ...);     int __cdecl _vsnprintf(    char *_Buffer,   size_t _BufferCount,     char const* _Format, va_list _Args);
#line 1986 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _snprintf_c_l(
                   char*       const _Buffer,
                                             size_t      const _BufferCount,
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 1998 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnprintf_c_l(_Buffer, _BufferCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2007 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _snprintf_c(
          char*       const _Buffer,
                                    size_t      const _BufferCount,
             char const* const _Format,
        ...)
    

#line 2018 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnprintf_c_l(_Buffer, _BufferCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2027 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _snprintf_s_l(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                                       size_t      const _MaxCount,
                      char const* const _Format,
                                                   _locale_t   const _Locale,
        ...)
    

#line 2040 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2049 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    
    __inline int __cdecl _snprintf_s(
           char*       const _Buffer,
                                                       size_t      const _BufferCount,
                                                       size_t      const _MaxCount,
                                char const* const _Format,
        ...)
    

#line 2061 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsnprintf_s_l(_Buffer, _BufferCount, _MaxCount, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2070 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline   int __cdecl _snprintf_s( char (&_Buffer)[_Size],   size_t _BufferCount,     char const* _Format, ...) throw() { va_list _ArgList; ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1)))))); return _vsnprintf_s(_Buffer, _Size, _BufferCount, _Format, _ArgList); } __pragma(warning(pop)); }
#line 2078 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _scprintf_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 2087 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscprintf_l(_Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2096 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _scprintf(
            char const* const _Format,
        ...)
    

#line 2104 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscprintf_l(_Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2113 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _scprintf_p_l(
            char const* const _Format,
                                         _locale_t   const _Locale,
        ...)
    

#line 2122 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscprintf_p_l(_Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2131 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _scprintf_p(
            char const* const _Format,
        ...)
    

#line 2139 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vscprintf_p(_Format, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2148 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    
    
    
    
    __declspec(dllimport) int __cdecl __stdio_common_vsscanf(
                                            unsigned __int64 _Options,
                  char const*      _Buffer,
                                            size_t           _BufferCount,
            char const*      _Format,
                                        _locale_t        _Locale,
                                               va_list          _ArgList
        );

    
    __inline int __cdecl _vsscanf_l(
                                 char const* const _Buffer,
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    

#line 2173 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    #line 2179 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl vsscanf(
                                 char const* const _Buffer,
            char const* const _Format,
                                      va_list           _ArgList
        )
    

#line 2189 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return _vsscanf_l(_Buffer, _Format, 0, _ArgList);
    }
    #line 2193 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _vsscanf_s_l(
                                 char const* const _Buffer,
            char const* const _Format,
                               _locale_t   const _Locale,
                                      va_list           _ArgList
        )
    

#line 2204 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        return __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, (size_t)-1, _Format, _Locale, _ArgList);
    }
    #line 2210 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        #pragma warning(push)
        #pragma warning(disable:6530)

        
        __inline int __cdecl vsscanf_s(
                                     char const* const _Buffer,
                char const* const _Format,
                                          va_list           _ArgList
            )
    

#line 2225 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            return _vsscanf_s_l(_Buffer, _Format, 0, _ArgList);
        }
    #line 2229 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

        extern "C++" { template <size_t _Size> inline int __cdecl vsscanf_s(  char const (&_Buffer)[_Size],     char const* _Format, va_list _ArgList) throw() { return vsscanf_s(_Buffer, _Size, _Format, _ArgList); } }
#line 2236 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

        #pragma warning(pop)

    #line 2240 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _sscanf_l(
                                          char const* const _Buffer,
            char const* const _Format,
                                        _locale_t   const _Locale,
        ...)
    

#line 2250 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsscanf_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2259 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

      
    __inline int __cdecl sscanf(
                                char const* const _Buffer,
            char const* const _Format,
        ...)
    

#line 2268 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsscanf_l(_Buffer, _Format, 0, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2277 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _sscanf_s_l(
                                            char const* const _Buffer,
            char const* const _Format,
                                          _locale_t   const _Locale,
        ...)
    

#line 2287 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));
        _Result = _vsscanf_s_l(_Buffer, _Format, _Locale, _ArgList);
        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2296 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    

        
        __inline int __cdecl sscanf_s(
                                      char const* const _Buffer,
                char const* const _Format,
            ...)
    

#line 2307 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
        {
            int _Result;
            va_list _ArgList;
            ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

            #pragma warning(push)
            #pragma warning(disable: 4996) 
            _Result = vsscanf_s(_Buffer, _Format, _ArgList);
            #pragma warning(pop)

            ((void)(_ArgList = (va_list)0));
            return _Result;
        }
    #line 2321 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #line 2323 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #pragma warning(push)
    #pragma warning(disable:6530)

     
    __inline int __cdecl _snscanf_l(
            char const* const _Buffer,
                                            size_t      const _BufferCount,
            char const* const _Format,
                                        _locale_t   const _Locale,
        ...)
    

#line 2337 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        _Result = __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2350 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

     
    __inline int __cdecl _snscanf(
            char const* const _Buffer,
                                            size_t      const _BufferCount,
                      char const* const _Format,
        ...)
    

#line 2360 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        _Result = __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()),
            _Buffer, _BufferCount, _Format, 0, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2373 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"


    
    __inline int __cdecl _snscanf_s_l(
              char const* const _Buffer,
                                              size_t      const _BufferCount,
            char const* const _Format,
                                          _locale_t   const _Locale,
        ...)
    

#line 2385 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Locale)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Locale))) + ((sizeof(_Locale) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        _Result = __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, _Locale, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2398 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    
    __inline int __cdecl _snscanf_s(
            char const* const _Buffer,
                                            size_t      const _BufferCount,
                    char const* const _Format,
        ...)
    

#line 2408 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
    {
        int _Result;
        va_list _ArgList;
        ((void)(__vcrt_va_start_verify_argument_type<decltype(_Format)>(), ((void)(_ArgList = (va_list)(&const_cast<char&>(reinterpret_cast<const volatile char&>(_Format))) + ((sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1))))));

        _Result = __stdio_common_vsscanf(
            (*__local_stdio_scanf_options ()) | (1ULL << 0),
            _Buffer, _BufferCount, _Format, 0, _ArgList);

        ((void)(_ArgList = (va_list)0));
        return _Result;
    }
    #line 2421 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

    #pragma warning(pop)

    

#line 2427 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"



    
    
    
    
    
    

        

        


#line 2443 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_tempnam" ". See online help for details."))
        __declspec(dllimport) char* __cdecl tempnam(
              char const* _Directory,
              char const* _FilePrefix
            );

        

#line 2453 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"

         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fcloseall" ". See online help for details.")) __declspec(dllimport) int   __cdecl fcloseall(void);
              __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fdopen" ". See online help for details."))    __declspec(dllimport) FILE* __cdecl fdopen(  int _FileHandle,   char const* _Format);
         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fgetchar" ". See online help for details."))  __declspec(dllimport) int   __cdecl fgetchar(void);
              __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fileno" ". See online help for details."))    __declspec(dllimport) int   __cdecl fileno(  FILE* _Stream);
         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_flushall" ". See online help for details."))  __declspec(dllimport) int   __cdecl flushall(void);
         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fputchar" ". See online help for details."))  __declspec(dllimport) int   __cdecl fputchar(  int _Ch);
              __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_getw" ". See online help for details."))      __declspec(dllimport) int   __cdecl getw(  FILE* _Stream);
         __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_putw" ". See online help for details."))      __declspec(dllimport) int   __cdecl putw(  int _Ch,   FILE* _Stream);
              __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_rmtmp" ". See online help for details."))     __declspec(dllimport) int   __cdecl rmtmp(void);

    #line 2465 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"
#line 2466 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdio.h"



} __pragma(pack(pop))
#line 15 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\math.h"










#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"







#pragma once




__pragma(pack(push, 8)) extern "C" {

#pragma warning(push)
#pragma warning(disable:4738) 
#pragma warning(disable:4820) 




    
    
    struct _exception
    {
        int    type;   
        char*  name;   
        double arg1;   
        double arg2;   
        double retval; 
    };

    
    
    
        

        struct _complex
        {
            double x, y; 
        };

        


#line 47 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"
    #line 48 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"
#line 49 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"










#line 60 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"
    typedef float  float_t;
    typedef double double_t;
#line 63 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"















    
        extern double const _HUGE;
    

#line 83 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"
#line 84 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"


    
#line 88 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"


















































































void __cdecl _fperrraise(  int _Except);

  __declspec(dllimport) short __cdecl _dclass(  double _X);
  __declspec(dllimport) short __cdecl _ldclass(  long double _X);
  __declspec(dllimport) short __cdecl _fdclass(  float _X);

  __declspec(dllimport) int __cdecl _dsign(  double _X);
  __declspec(dllimport) int __cdecl _ldsign(  long double _X);
  __declspec(dllimport) int __cdecl _fdsign(  float _X);

  __declspec(dllimport) int __cdecl _dpcomp(  double _X,   double _Y);
  __declspec(dllimport) int __cdecl _ldpcomp(  long double _X,   long double _Y);
  __declspec(dllimport) int __cdecl _fdpcomp(  float _X,   float _Y);

  __declspec(dllimport) short __cdecl _dtest(  double* _Px);
  __declspec(dllimport) short __cdecl _ldtest(  long double* _Px);
  __declspec(dllimport) short __cdecl _fdtest(  float* _Px);

__declspec(dllimport) short __cdecl _d_int(  double* _Px,   short _Xexp);
__declspec(dllimport) short __cdecl _ld_int(  long double* _Px,   short _Xexp);
__declspec(dllimport) short __cdecl _fd_int(  float* _Px,   short _Xexp);

__declspec(dllimport) short __cdecl _dscale(  double* _Px,   long _Lexp);
__declspec(dllimport) short __cdecl _ldscale(  long double* _Px,   long _Lexp);
__declspec(dllimport) short __cdecl _fdscale(  float* _Px,   long _Lexp);

__declspec(dllimport) short __cdecl _dunscale(  short* _Pex,   double* _Px);
__declspec(dllimport) short __cdecl _ldunscale(  short* _Pex,   long double* _Px);
__declspec(dllimport) short __cdecl _fdunscale(  short* _Pex,   float* _Px);

  __declspec(dllimport) short __cdecl _dexp(  double* _Px,   double _Y,   long _Eoff);
  __declspec(dllimport) short __cdecl _ldexp(  long double* _Px,   long double _Y,   long _Eoff);
  __declspec(dllimport) short __cdecl _fdexp(  float* _Px,   float _Y,   long _Eoff);

  __declspec(dllimport) short __cdecl _dnorm(  unsigned short* _Ps);
  __declspec(dllimport) short __cdecl _fdnorm(  unsigned short* _Ps);

  __declspec(dllimport) double __cdecl _dpoly(  double _X,   double const* _Tab,   int _N);
  __declspec(dllimport) long double __cdecl _ldpoly(  long double _X,   long double const* _Tab,   int _N);
  __declspec(dllimport) float __cdecl _fdpoly(  float _X,   float const* _Tab,   int _N);

  __declspec(dllimport) double __cdecl _dlog(  double _X,   int _Baseflag);
  __declspec(dllimport) long double __cdecl _ldlog(  long double _X,   int _Baseflag);
  __declspec(dllimport) float __cdecl _fdlog(  float _X,   int _Baseflag);

  __declspec(dllimport) double __cdecl _dsin(  double _X,   unsigned int _Qoff);
  __declspec(dllimport) long double __cdecl _ldsin(  long double _X,   unsigned int _Qoff);
  __declspec(dllimport) float __cdecl _fdsin(  float _X,   unsigned int _Qoff);


typedef union
{   
    unsigned short _Sh[4];
    double _Val;
} _double_val;


typedef union
{   
    unsigned short _Sh[2];
    float _Val;
} _float_val;


typedef union
{   
    unsigned short _Sh[4];
    long double _Val;
} _ldouble_val;

typedef union
{   
    unsigned short _Word[4];
    float _Float;
    double _Double;
    long double _Long_double;
} _float_const;

extern const _float_const _Denorm_C,  _Inf_C,  _Nan_C,  _Snan_C, _Hugeval_C;
extern const _float_const _FDenorm_C, _FInf_C, _FNan_C, _FSnan_C;
extern const _float_const _LDenorm_C, _LInf_C, _LNan_C, _LSnan_C;

extern const _float_const _Eps_C,  _Rteps_C;
extern const _float_const _FEps_C, _FRteps_C;
extern const _float_const _LEps_C, _LRteps_C;

extern const double      _Zero_C,  _Xbig_C;
extern const float       _FZero_C, _FXbig_C;
extern const long double _LZero_C, _LXbig_C;




























extern "C++"
{
      inline int fpclassify(  float _X) throw()
    {
        return _fdtest(&_X);
    }

      inline int fpclassify(  double _X) throw()
    {
        return _dtest(&_X);
    }

      inline int fpclassify(  long double _X) throw()
    {
        return _ldtest(&_X);
    }

      inline bool signbit(  float _X) throw()
    {
        return _fdsign(_X) != 0;
    }

      inline bool signbit(  double _X) throw()
    {
        return _dsign(_X) != 0;
    }

      inline bool signbit(  long double _X) throw()
    {
        return _ldsign(_X) != 0;
    }

      inline int _fpcomp(  float _X,   float _Y) throw()
    {
        return _fdpcomp(_X, _Y);
    }

      inline int _fpcomp(  double _X,   double _Y) throw()
    {
        return _dpcomp(_X, _Y);
    }

      inline int _fpcomp(  long double _X,   long double _Y) throw()
    {
        return _ldpcomp(_X, _Y);
    }

    template <class _Trc, class _Tre> struct _Combined_type
    {   
        typedef float _Type;
    };

    template <> struct _Combined_type<float, double>
    {   
        typedef double _Type;
    };

    template <> struct _Combined_type<float, long double>
    {   
        typedef long double _Type;
    };

    template <class _Ty, class _T2> struct _Real_widened
    {   
        typedef long double _Type;
    };

    template <> struct _Real_widened<float, float>
    {   
        typedef float _Type;
    };

    template <> struct _Real_widened<float, double>
    {   
        typedef double _Type;
    };

    template <> struct _Real_widened<double, float>
    {   
        typedef double _Type;
    };

    template <> struct _Real_widened<double, double>
    {   
        typedef double _Type;
    };

    template <class _Ty> struct _Real_type
    {   
        typedef double _Type;   
    };

    template <> struct _Real_type<float>
    {   
        typedef float _Type;
    };

    template <> struct _Real_type<long double>
    {   
        typedef long double _Type;
    };

    template <class _T1, class _T2>
      inline int _fpcomp(  _T1 _X,   _T2 _Y) throw()
    {   
        typedef typename _Combined_type<float,
            typename _Real_widened<
            typename _Real_type<_T1>::_Type,
            typename _Real_type<_T2>::_Type>::_Type>::_Type _Tw;
        return _fpcomp((_Tw)_X, (_Tw)_Y);
    }

    template <class _Ty>
      inline bool isfinite(  _Ty _X) throw()
    {
        return fpclassify(_X) <= 0;
    }

    template <class _Ty>
      inline bool isinf(  _Ty _X) throw()
    {
        return fpclassify(_X) == 1;
    }

    template <class _Ty>
      inline bool isnan(  _Ty _X) throw()
    {
        return fpclassify(_X) == 2;
    }

    template <class _Ty>
      inline bool isnormal(  _Ty _X) throw()
    {
        return fpclassify(_X) == (-1);
    }

    template <class _Ty1, class _Ty2>
      inline bool isgreater(  _Ty1 _X,   _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & 4) != 0;
    }

    template <class _Ty1, class _Ty2>
      inline bool isgreaterequal(  _Ty1 _X,   _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & (2 | 4)) != 0;
    }

    template <class _Ty1, class _Ty2>
      inline bool isless(  _Ty1 _X,   _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & 1) != 0;
    }

    template <class _Ty1, class _Ty2>
      inline bool islessequal(  _Ty1 _X,   _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & (1 | 2)) != 0;
    }

    template <class _Ty1, class _Ty2>
      inline bool islessgreater(  _Ty1 _X,   _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & (1 | 4)) != 0;
    }

    template <class _Ty1, class _Ty2>
      inline bool isunordered(  _Ty1 _X,   _Ty2 _Y) throw()
    {
        return _fpcomp(_X, _Y) == 0;
    }
}  
#line 460 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"





      int       __cdecl abs(  int _X);
      long      __cdecl labs(  long _X);
      long long __cdecl llabs(  long long _X);

      double __cdecl acos(  double _X);
      double __cdecl asin(  double _X);
      double __cdecl atan(  double _X);
      double __cdecl atan2(  double _Y,   double _X);

      double __cdecl cos(  double _X);
      double __cdecl cosh(  double _X);
      double __cdecl exp(  double _X);
       double __cdecl fabs(  double _X);
      double __cdecl fmod(  double _X,   double _Y);
      double __cdecl log(  double _X);
      double __cdecl log10(  double _X);
      double __cdecl pow(  double _X,   double _Y);
      double __cdecl sin(  double _X);
      double __cdecl sinh(  double _X);
       double __cdecl sqrt(  double _X);
      double __cdecl tan(  double _X);
      double __cdecl tanh(  double _X);

      __declspec(dllimport) double    __cdecl acosh(  double _X);
      __declspec(dllimport) double    __cdecl asinh(  double _X);
      __declspec(dllimport) double    __cdecl atanh(  double _X);
      __declspec(dllimport)  double    __cdecl atof(  char const* _String);
      __declspec(dllimport)  double    __cdecl _atof_l(  char const* _String,   _locale_t _Locale);
      __declspec(dllimport) double    __cdecl _cabs(  struct _complex _Complex_value);
      __declspec(dllimport) double    __cdecl cbrt(  double _X);
      __declspec(dllimport) double    __cdecl ceil(  double _X);
      __declspec(dllimport) double    __cdecl _chgsign(  double _X);
      __declspec(dllimport) double    __cdecl copysign(  double _Number,   double _Sign);
      __declspec(dllimport) double    __cdecl _copysign(  double _Number,   double _Sign);
      __declspec(dllimport) double    __cdecl erf(  double _X);
      __declspec(dllimport) double    __cdecl erfc(  double _X);
      __declspec(dllimport) double    __cdecl exp2(  double _X);
      __declspec(dllimport) double    __cdecl expm1(  double _X);
      __declspec(dllimport) double    __cdecl fdim(  double _X,   double _Y);
      __declspec(dllimport) double    __cdecl floor(  double _X);
      __declspec(dllimport) double    __cdecl fma(  double _X,   double _Y,   double _Z);
      __declspec(dllimport) double    __cdecl fmax(  double _X,   double _Y);
      __declspec(dllimport) double    __cdecl fmin(  double _X,   double _Y);
      __declspec(dllimport) double    __cdecl frexp(  double _X,   int* _Y);
      __declspec(dllimport) double    __cdecl hypot(  double _X,   double _Y);
      __declspec(dllimport) double    __cdecl _hypot(  double _X,   double _Y);
      __declspec(dllimport) int       __cdecl ilogb(  double _X);
      __declspec(dllimport) double    __cdecl ldexp(  double _X,   int _Y);
      __declspec(dllimport) double    __cdecl lgamma(  double _X);
      __declspec(dllimport) long long __cdecl llrint(  double _X);
      __declspec(dllimport) long long __cdecl llround(  double _X);
      __declspec(dllimport) double    __cdecl log1p(  double _X);
      __declspec(dllimport) double    __cdecl log2(  double _X);
      __declspec(dllimport) double    __cdecl logb(  double _X);
      __declspec(dllimport) long      __cdecl lrint(  double _X);
      __declspec(dllimport) long      __cdecl lround(  double _X);

    int __cdecl _matherr(  struct _exception* _Except);

      __declspec(dllimport) double __cdecl modf(  double _X,   double* _Y);
      __declspec(dllimport) double __cdecl nan(  char const* _X);
      __declspec(dllimport) double __cdecl nearbyint(  double _X);
      __declspec(dllimport) double __cdecl nextafter(  double _X,   double _Y);
      __declspec(dllimport) double __cdecl nexttoward(  double _X,   long double _Y);
      __declspec(dllimport) double __cdecl remainder(  double _X,   double _Y);
      __declspec(dllimport) double __cdecl remquo(  double _X,   double _Y,   int* _Z);
      __declspec(dllimport) double __cdecl rint(  double _X);
      __declspec(dllimport) double __cdecl round(  double _X);
      __declspec(dllimport) double __cdecl scalbln(  double _X,   long _Y);
      __declspec(dllimport) double __cdecl scalbn(  double _X,   int _Y);
      __declspec(dllimport) double __cdecl tgamma(  double _X);
      __declspec(dllimport) double __cdecl trunc(  double _X);
      __declspec(dllimport) double __cdecl _j0(  double _X );
      __declspec(dllimport) double __cdecl _j1(  double _X );
      __declspec(dllimport) double __cdecl _jn(int _X,   double _Y);
      __declspec(dllimport) double __cdecl _y0(  double _X);
      __declspec(dllimport) double __cdecl _y1(  double _X);
      __declspec(dllimport) double __cdecl _yn(  int _X,   double _Y);

      __declspec(dllimport) float     __cdecl acoshf(  float _X);
      __declspec(dllimport) float     __cdecl asinhf(  float _X);
      __declspec(dllimport) float     __cdecl atanhf(  float _X);
      __declspec(dllimport) float     __cdecl cbrtf(  float _X);
      __declspec(dllimport) float     __cdecl _chgsignf(  float _X);
      __declspec(dllimport) float     __cdecl copysignf(  float _Number,   float _Sign);
      __declspec(dllimport) float     __cdecl _copysignf(  float _Number,   float _Sign);
      __declspec(dllimport) float     __cdecl erff(  float _X);
      __declspec(dllimport) float     __cdecl erfcf(  float _X);
      __declspec(dllimport) float     __cdecl expm1f(  float _X);
      __declspec(dllimport) float     __cdecl exp2f(  float _X);
      __declspec(dllimport) float     __cdecl fdimf(  float _X,   float _Y);
      __declspec(dllimport) float     __cdecl fmaf(  float _X,   float _Y,   float _Z);
      __declspec(dllimport) float     __cdecl fmaxf(  float _X,   float _Y);
      __declspec(dllimport) float     __cdecl fminf(  float _X,   float _Y);
      __declspec(dllimport) float     __cdecl _hypotf(  float _X,   float _Y);
      __declspec(dllimport) int       __cdecl ilogbf(  float _X);
      __declspec(dllimport) float     __cdecl lgammaf(  float _X);
      __declspec(dllimport) long long __cdecl llrintf(  float _X);
      __declspec(dllimport) long long __cdecl llroundf(  float _X);
      __declspec(dllimport) float     __cdecl log1pf(  float _X);
      __declspec(dllimport) float     __cdecl log2f(  float _X);
      __declspec(dllimport) float     __cdecl logbf(  float _X);
      __declspec(dllimport) long      __cdecl lrintf(  float _X);
      __declspec(dllimport) long      __cdecl lroundf(  float _X);
      __declspec(dllimport) float     __cdecl nanf(  char const* _X);
      __declspec(dllimport) float     __cdecl nearbyintf(  float _X);
      __declspec(dllimport) float     __cdecl nextafterf(  float _X,   float _Y);
      __declspec(dllimport) float     __cdecl nexttowardf(  float _X,   long double _Y);
      __declspec(dllimport) float     __cdecl remainderf(  float _X,   float _Y);
      __declspec(dllimport) float     __cdecl remquof(  float _X,   float _Y,   int* _Z);
      __declspec(dllimport) float     __cdecl rintf(  float _X);
      __declspec(dllimport) float     __cdecl roundf(  float _X);
      __declspec(dllimport) float     __cdecl scalblnf(  float _X,   long _Y);
      __declspec(dllimport) float     __cdecl scalbnf(  float _X,   int _Y);
      __declspec(dllimport) float     __cdecl tgammaf(  float _X);
      __declspec(dllimport) float     __cdecl truncf(  float _X);

    

          __declspec(dllimport) int  __cdecl _set_SSE2_enable(  int _Flag);

    #line 587 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

    










#line 600 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"




#line 605 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"



    










#line 620 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

          __inline float __cdecl acosf(  float _X)
        {
            return (float)acos(_X);
        }

          __inline float __cdecl asinf(  float _X)
        {
            return (float)asin(_X);
        }

          __inline float __cdecl atan2f(  float _Y,   float _X)
        {
            return (float)atan2(_Y, _X);
        }

          __inline float __cdecl atanf(  float _X)
        {
            return (float)atan(_X);
        }

          __inline float __cdecl ceilf(  float _X)
        {
            return (float)ceil(_X);
        }

          __inline float __cdecl cosf(  float _X)
        {
            return (float)cos(_X);
        }

          __inline float __cdecl coshf(  float _X)
        {
            return (float)cosh(_X);
        }

          __inline float __cdecl expf(  float _X)
        {
            return (float)exp(_X);
        }

    #line 662 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

    



#line 668 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

          __inline float __cdecl fabsf(  float _X)
        {
            return (float)fabs(_X);
        }

    #line 675 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

    




#line 682 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

          __inline float __cdecl floorf(  float _X)
        {
            return (float)floor(_X);
        }

          __inline float __cdecl fmodf(  float _X,   float _Y)
        {
            return (float)fmod(_X, _Y);
        }

    #line 694 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

      __inline float __cdecl frexpf(  float _X,   int *_Y)
    {
        return (float)frexp(_X, _Y);
    }

      __inline float __cdecl hypotf(  float _X,   float _Y)
    {
        return _hypotf(_X, _Y);
    }

      __inline float __cdecl ldexpf(  float _X,   int _Y)
    {
        return (float)ldexp(_X, _Y);
    }

    











#line 723 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

          __inline float __cdecl log10f(  float _X)
        {
            return (float)log10(_X);
        }

          __inline float __cdecl logf(  float _X)
        {
            return (float)log(_X);
        }

          __inline float __cdecl modff(  float _X,   float* _Y)
        {
            double _F, _I;
            _F = modf(_X, &_I);
            *_Y = (float)_I;
            return (float)_F;
        }

          __inline float __cdecl powf(  float _X,   float _Y)
        {
            return (float)pow(_X, _Y);
        }

          __inline float __cdecl sinf(  float _X)
        {
            return (float)sin(_X);
        }

          __inline float __cdecl sinhf(  float _X)
        {
            return (float)sinh(_X);
        }

          __inline float __cdecl sqrtf(  float _X)
        {
            return (float)sqrt(_X);
        }

          __inline float __cdecl tanf(  float _X)
        {
            return (float)tan(_X);
        }

          __inline float __cdecl tanhf(  float _X)
        {
            return (float)tanh(_X);
        }

    #line 773 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

      __declspec(dllimport) long double __cdecl acoshl(  long double _X);

      __inline long double __cdecl acosl(  long double _X)
    {
        return acos((double)_X);
    }

      __declspec(dllimport) long double __cdecl asinhl(  long double _X);

      __inline long double __cdecl asinl(  long double _X)
    {
        return asin((double)_X);
    }

      __inline long double __cdecl atan2l(  long double _Y,   long double _X)
    {
        return atan2((double)_Y, (double)_X);
    }

      __declspec(dllimport) long double __cdecl atanhl(  long double _X);

      __inline long double __cdecl atanl(  long double _X)
    {
        return atan((double)_X);
    }

      __declspec(dllimport) long double __cdecl cbrtl(  long double _X);

      __inline long double __cdecl ceill(  long double _X)
    {
        return ceil((double)_X);
    }

      __inline long double __cdecl _chgsignl(  long double _X)
    {
        return _chgsign((double)_X);
    }

      __declspec(dllimport) long double __cdecl copysignl(  long double _Number,   long double _Sign);

      __inline long double __cdecl _copysignl(  long double _Number,   long double _Sign)
    {
        return _copysign((double)_Number, (double)_Sign);
    }

      __inline long double __cdecl coshl(  long double _X)
    {
        return cosh((double)_X);
    }

      __inline long double __cdecl cosl(  long double _X)
    {
        return cos((double)_X);
    }

      __declspec(dllimport) long double __cdecl erfl(  long double _X);
      __declspec(dllimport) long double __cdecl erfcl(  long double _X);

      __inline long double __cdecl expl(  long double _X)
    {
        return exp((double)_X);
    }

      __declspec(dllimport) long double __cdecl exp2l(  long double _X);
      __declspec(dllimport) long double __cdecl expm1l(  long double _X);

      __inline long double __cdecl fabsl(  long double _X)
    {
        return fabs((double)_X);
    }

      __declspec(dllimport) long double __cdecl fdiml(  long double _X,   long double _Y);

      __inline long double __cdecl floorl(  long double _X)
    {
        return floor((double)_X);
    }

      __declspec(dllimport) long double __cdecl fmal(  long double _X,   long double _Y,   long double _Z);
      __declspec(dllimport) long double __cdecl fmaxl(  long double _X,   long double _Y);
      __declspec(dllimport) long double __cdecl fminl(  long double _X,   long double _Y);

      __inline long double __cdecl fmodl(  long double _X,   long double _Y)
    {
        return fmod((double)_X, (double)_Y);
    }

      __inline long double __cdecl frexpl(  long double _X,   int *_Y)
    {
        return frexp((double)_X, _Y);
    }

      __declspec(dllimport) int __cdecl ilogbl(  long double _X);

      __inline long double __cdecl _hypotl(  long double _X,   long double _Y)
    {
        return _hypot((double)_X, (double)_Y);
    }

      __inline long double __cdecl hypotl(  long double _X,   long double _Y)
    {
        return _hypot((double)_X, (double)_Y);
    }

      __inline long double __cdecl ldexpl(  long double _X,   int _Y)
    {
        return ldexp((double)_X, _Y);
    }

      __declspec(dllimport) long double __cdecl lgammal(  long double _X);
      __declspec(dllimport) long long __cdecl llrintl(  long double _X);
      __declspec(dllimport) long long __cdecl llroundl(  long double _X);

      __inline long double __cdecl logl(  long double _X)
    {
        return log((double)_X);
    }

      __inline long double __cdecl log10l(  long double _X)
    {
        return log10((double)_X);
    }

      __declspec(dllimport) long double __cdecl log1pl(  long double _X);
      __declspec(dllimport) long double __cdecl log2l(  long double _X);
      __declspec(dllimport) long double __cdecl logbl(  long double _X);
      __declspec(dllimport) long __cdecl lrintl(  long double _X);
      __declspec(dllimport) long __cdecl lroundl(  long double _X);

      __inline long double __cdecl modfl(  long double _X,   long double* _Y)
    {
        double _F, _I;
        _F = modf((double)_X, &_I);
        *_Y = _I;
        return _F;
    }

      __declspec(dllimport) long double __cdecl nanl(  char const* _X);
      __declspec(dllimport) long double __cdecl nearbyintl(  long double _X);
      __declspec(dllimport) long double __cdecl nextafterl(  long double _X,   long double _Y);
      __declspec(dllimport) long double __cdecl nexttowardl(  long double _X,   long double _Y);

      __inline long double __cdecl powl(  long double _X,   long double _Y)
    {
        return pow((double)_X, (double)_Y);
    }

      __declspec(dllimport) long double __cdecl remainderl(  long double _X,   long double _Y);
      __declspec(dllimport) long double __cdecl remquol(  long double _X,   long double _Y,   int* _Z);
      __declspec(dllimport) long double __cdecl rintl(  long double _X);
      __declspec(dllimport) long double __cdecl roundl(  long double _X);
      __declspec(dllimport) long double __cdecl scalblnl(  long double _X,   long _Y);
      __declspec(dllimport) long double __cdecl scalbnl(  long double _X,   int _Y);

      __inline long double __cdecl sinhl(  long double _X)
    {
        return sinh((double)_X);
    }

      __inline long double __cdecl sinl(  long double _X)
    {
        return sin((double)_X);
    }

      __inline long double __cdecl sqrtl(  long double _X)
    {
        return sqrt((double)_X);
    }

      __inline long double __cdecl tanhl(  long double _X)
    {
        return tanh((double)_X);
    }

      __inline long double __cdecl tanl(  long double _X)
    {
        return tan((double)_X);
    }

      __declspec(dllimport) long double __cdecl tgammal(  long double _X);
      __declspec(dllimport) long double __cdecl truncl(  long double _X);

    



#line 961 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"



    
    
    
    
    
    

    

    
        
            extern double HUGE;
        

#line 979 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_j0" ". See online help for details."))   __declspec(dllimport) double __cdecl j0(  double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_j1" ". See online help for details."))   __declspec(dllimport) double __cdecl j1(  double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_jn" ". See online help for details."))   __declspec(dllimport) double __cdecl jn(  int _X,   double _Y);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_y0" ". See online help for details."))   __declspec(dllimport) double __cdecl y0(  double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_y1" ". See online help for details."))   __declspec(dllimport) double __cdecl y1(  double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_yn" ". See online help for details."))   __declspec(dllimport) double __cdecl yn(  int _X,   double _Y);
    #line 987 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"

#line 989 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_math.h"


#pragma warning(pop)

} __pragma(pack(pop))
#line 12 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\math.h"




#line 16 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"


#pragma warning (push)
#pragma warning (disable: 4251) 
#line 21 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"












struct ImRect;
struct ImGuiColMod;
struct ImGuiStyleMod;
struct ImGuiGroupData;
struct ImGuiSimpleColumns;
struct ImGuiDrawContext;
struct ImGuiTextEditState;
struct ImGuiIniData;
struct ImGuiMouseCursorData;
struct ImGuiPopupRef;
struct ImGuiWindow;

typedef int ImGuiLayoutType;      
typedef int ImGuiButtonFlags;     
typedef int ImGuiTreeNodeFlags;   
typedef int ImGuiSliderFlags;     





namespace ImGuiStb
{






#line 1 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"




























































































































































































































































































#line 286 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"


#line 289 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"





#line 295 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"

typedef struct
{
   
   int  where;
   short           insert_length;
   short           delete_length;
   short           char_storage;
} StbUndoRecord;

typedef struct
{
   
   StbUndoRecord          undo_rec [99];
   ImWchar  undo_char[999];
   short undo_point, redo_point;
   short undo_char_point, redo_char_point;
} StbUndoState;

typedef struct
{
   
   
   
   

   int cursor;
   

   int select_start;          
   int select_end;
   
   
   
   

   unsigned char insert_mode;
   
   

   
   
   
   
   unsigned char cursor_at_end_of_line; 
   unsigned char initialized;
   unsigned char has_preferred_x;
   unsigned char single_line;
   unsigned char padding1, padding2, padding3;
   float preferred_x; 
   StbUndoState undostate;
} STB_TexteditState;










typedef struct
{
   float x0,x1;             
   float baseline_y_delta;  
   float ymin,ymax;         
   int num_chars;
} StbTexteditRow;
#line 365 "c:\\biblioteki\\imgui-sfml\\stb_textedit.h"






























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 63 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"

} 






extern  ImGuiContext* GImGui;  
#line 73 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"










 int           ImTextStrToUtf8(char* buf, int buf_size, const ImWchar* in_text, const ImWchar* in_text_end);      
 int           ImTextCharFromUtf8(unsigned int* out_char, const char* in_text, const char* in_text_end);          
 int           ImTextStrFromUtf8(ImWchar* buf, int buf_size, const char* in_text, const char* in_text_end, const char** in_remaining = 0);   
 int           ImTextCountCharsFromUtf8(const char* in_text, const char* in_text_end);                            
 int           ImTextCountUtf8BytesFromStr(const ImWchar* in_text, const ImWchar* in_text_end);                   


 ImU32         ImHash(const void* data, int data_size, ImU32 seed = 0);    
 void*         ImFileLoadToMemory(const char* filename, const char* file_open_mode, int* out_file_size = 0, int padding_bytes = 0);
 FILE*         ImFileOpen(const char* filename, const char* file_open_mode);         
 bool          ImIsPointInTriangle(const ImVec2& p, const ImVec2& a, const ImVec2& b, const ImVec2& c);
static inline bool      ImCharIsSpace(int c)            { return c == ' ' || c == '\t' || c == 0x3000; }
static inline int       ImUpperPowerOfTwo(int v)        { v--; v |= v >> 1; v |= v >> 2; v |= v >> 4; v |= v >> 8; v |= v >> 16; v++; return v; }


 int           ImStricmp(const char* str1, const char* str2);
 int           ImStrnicmp(const char* str1, const char* str2, int count);
 char*         ImStrdup(const char* str);
 int           ImStrlenW(const ImWchar* str);
 const ImWchar*ImStrbolW(const ImWchar* buf_mid_line, const ImWchar* buf_begin); 
 const char*   ImStristr(const char* haystack, const char* haystack_end, const char* needle, const char* needle_end);
 int           ImFormatString(char* buf, int buf_size, const char* fmt, ...) ;
 int           ImFormatStringV(char* buf, int buf_size, const char* fmt, va_list args);




static inline ImVec2 operator*(const ImVec2& lhs, const float rhs)              { return ImVec2(lhs.x*rhs, lhs.y*rhs); }
static inline ImVec2 operator/(const ImVec2& lhs, const float rhs)              { return ImVec2(lhs.x/rhs, lhs.y/rhs); }
static inline ImVec2 operator+(const ImVec2& lhs, const ImVec2& rhs)            { return ImVec2(lhs.x+rhs.x, lhs.y+rhs.y); }
static inline ImVec2 operator-(const ImVec2& lhs, const ImVec2& rhs)            { return ImVec2(lhs.x-rhs.x, lhs.y-rhs.y); }
static inline ImVec2 operator*(const ImVec2& lhs, const ImVec2& rhs)            { return ImVec2(lhs.x*rhs.x, lhs.y*rhs.y); }
static inline ImVec2 operator/(const ImVec2& lhs, const ImVec2& rhs)            { return ImVec2(lhs.x/rhs.x, lhs.y/rhs.y); }
static inline ImVec2& operator+=(ImVec2& lhs, const ImVec2& rhs)                { lhs.x += rhs.x; lhs.y += rhs.y; return lhs; }
static inline ImVec2& operator-=(ImVec2& lhs, const ImVec2& rhs)                { lhs.x -= rhs.x; lhs.y -= rhs.y; return lhs; }
static inline ImVec2& operator*=(ImVec2& lhs, const float rhs)                  { lhs.x *= rhs; lhs.y *= rhs; return lhs; }
static inline ImVec2& operator/=(ImVec2& lhs, const float rhs)                  { lhs.x /= rhs; lhs.y /= rhs; return lhs; }
static inline ImVec4 operator-(const ImVec4& lhs, const ImVec4& rhs)            { return ImVec4(lhs.x-rhs.x, lhs.y-rhs.y, lhs.z-rhs.z, lhs.w-rhs.w); }
#line 122 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"

static inline int    ImMin(int lhs, int rhs)                                    { return lhs < rhs ? lhs : rhs; }
static inline int    ImMax(int lhs, int rhs)                                    { return lhs >= rhs ? lhs : rhs; }
static inline float  ImMin(float lhs, float rhs)                                { return lhs < rhs ? lhs : rhs; }
static inline float  ImMax(float lhs, float rhs)                                { return lhs >= rhs ? lhs : rhs; }
static inline ImVec2 ImMin(const ImVec2& lhs, const ImVec2& rhs)                { return ImVec2(ImMin(lhs.x,rhs.x), ImMin(lhs.y,rhs.y)); }
static inline ImVec2 ImMax(const ImVec2& lhs, const ImVec2& rhs)                { return ImVec2(ImMax(lhs.x,rhs.x), ImMax(lhs.y,rhs.y)); }
static inline int    ImClamp(int v, int mn, int mx)                             { return (v < mn) ? mn : (v > mx) ? mx : v; }
static inline float  ImClamp(float v, float mn, float mx)                       { return (v < mn) ? mn : (v > mx) ? mx : v; }
static inline ImVec2 ImClamp(const ImVec2& f, const ImVec2& mn, ImVec2 mx)      { return ImVec2(ImClamp(f.x,mn.x,mx.x), ImClamp(f.y,mn.y,mx.y)); }
static inline float  ImSaturate(float f)                                        { return (f < 0.0f) ? 0.0f : (f > 1.0f) ? 1.0f : f; }
static inline float  ImLerp(float a, float b, float t)                          { return a + (b - a) * t; }
static inline ImVec2 ImLerp(const ImVec2& a, const ImVec2& b, const ImVec2& t)  { return ImVec2(a.x + (b.x - a.x) * t.x, a.y + (b.y - a.y) * t.y); }
static inline float  ImLengthSqr(const ImVec2& lhs)                             { return lhs.x*lhs.x + lhs.y*lhs.y; }
static inline float  ImLengthSqr(const ImVec4& lhs)                             { return lhs.x*lhs.x + lhs.y*lhs.y + lhs.z*lhs.z + lhs.w*lhs.w; }
static inline float  ImInvLength(const ImVec2& lhs, float fail_value)           { float d = lhs.x*lhs.x + lhs.y*lhs.y; if (d > 0.0f) return 1.0f / sqrtf(d); return fail_value; }
static inline float  ImFloor(float f)                                           { return (float)(int)f; }
static inline ImVec2 ImFloor(ImVec2 v)                                          { return ImVec2((float)(int)v.x, (float)(int)v.y); }




struct ImPlacementNewDummy {};
inline void* operator new(size_t, ImPlacementNewDummy, void* ptr) { return ptr; }
inline void operator delete(void*, ImPlacementNewDummy, void*) {}

#line 149 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"





enum ImGuiButtonFlags_
{
    ImGuiButtonFlags_Repeat                 = 1 << 0,   
    ImGuiButtonFlags_PressedOnClickRelease  = 1 << 1,   
    ImGuiButtonFlags_PressedOnClick         = 1 << 2,   
    ImGuiButtonFlags_PressedOnRelease       = 1 << 3,   
    ImGuiButtonFlags_PressedOnDoubleClick   = 1 << 4,   
    ImGuiButtonFlags_FlattenChilds          = 1 << 5,   
    ImGuiButtonFlags_DontClosePopups        = 1 << 6,   
    ImGuiButtonFlags_Disabled               = 1 << 7,   
    ImGuiButtonFlags_AlignTextBaseLine      = 1 << 8,   
    ImGuiButtonFlags_NoKeyModifiers         = 1 << 9,   
    ImGuiButtonFlags_AllowOverlapMode       = 1 << 10   
};

enum ImGuiSliderFlags_
{
    ImGuiSliderFlags_Vertical               = 1 << 0
};

enum ImGuiSelectableFlagsPrivate_
{
    
    ImGuiSelectableFlags_Menu               = 1 << 3,
    ImGuiSelectableFlags_MenuItem           = 1 << 4,
    ImGuiSelectableFlags_Disabled           = 1 << 5,
    ImGuiSelectableFlags_DrawFillAvailWidth = 1 << 6
};


enum ImGuiLayoutType_
{
    ImGuiLayoutType_Vertical,
    ImGuiLayoutType_Horizontal
};

enum ImGuiPlotType
{
    ImGuiPlotType_Lines,
    ImGuiPlotType_Histogram
};

enum ImGuiDataType
{
    ImGuiDataType_Int,
    ImGuiDataType_Float,
    ImGuiDataType_Float2,
};

enum ImGuiCorner
{
    ImGuiCorner_TopLeft     = 1 << 0, 
    ImGuiCorner_TopRight    = 1 << 1, 
    ImGuiCorner_BottomRight = 1 << 2, 
    ImGuiCorner_BottomLeft  = 1 << 3, 
    ImGuiCorner_All         = 0x0F
};



struct  ImRect
{
    ImVec2      Min;    
    ImVec2      Max;    

    ImRect()                                        : Min(3.402823466e+38F,3.402823466e+38F), Max(-3.402823466e+38F,-3.402823466e+38F)  {}
    ImRect(const ImVec2& min, const ImVec2& max)    : Min(min), Max(max)                            {}
    ImRect(const ImVec4& v)                         : Min(v.x, v.y), Max(v.z, v.w)                  {}
    ImRect(float x1, float y1, float x2, float y2)  : Min(x1, y1), Max(x2, y2)                      {}

    ImVec2      GetCenter() const               { return ImVec2((Min.x+Max.x)*0.5f, (Min.y+Max.y)*0.5f); }
    ImVec2      GetSize() const                 { return ImVec2(Max.x-Min.x, Max.y-Min.y); }
    float       GetWidth() const                { return Max.x-Min.x; }
    float       GetHeight() const               { return Max.y-Min.y; }
    ImVec2      GetTL() const                   { return Min; }                   
    ImVec2      GetTR() const                   { return ImVec2(Max.x, Min.y); }  
    ImVec2      GetBL() const                   { return ImVec2(Min.x, Max.y); }  
    ImVec2      GetBR() const                   { return Max; }                   
    bool        Contains(const ImVec2& p) const { return p.x >= Min.x     && p.y >= Min.y     && p.x < Max.x     && p.y < Max.y; }
    bool        Contains(const ImRect& r) const { return r.Min.x >= Min.x && r.Min.y >= Min.y && r.Max.x < Max.x && r.Max.y < Max.y; }
    bool        Overlaps(const ImRect& r) const { return r.Min.y < Max.y  && r.Max.y > Min.y  && r.Min.x < Max.x && r.Max.x > Min.x; }
    void        Add(const ImVec2& rhs)          { if (Min.x > rhs.x)     Min.x = rhs.x;     if (Min.y > rhs.y) Min.y = rhs.y;         if (Max.x < rhs.x) Max.x = rhs.x;         if (Max.y < rhs.y) Max.y = rhs.y; }
    void        Add(const ImRect& rhs)          { if (Min.x > rhs.Min.x) Min.x = rhs.Min.x; if (Min.y > rhs.Min.y) Min.y = rhs.Min.y; if (Max.x < rhs.Max.x) Max.x = rhs.Max.x; if (Max.y < rhs.Max.y) Max.y = rhs.Max.y; }
    void        Expand(const float amount)      { Min.x -= amount;   Min.y -= amount;   Max.x += amount;   Max.y += amount; }
    void        Expand(const ImVec2& amount)    { Min.x -= amount.x; Min.y -= amount.y; Max.x += amount.x; Max.y += amount.y; }
    void        Reduce(const ImVec2& amount)    { Min.x += amount.x; Min.y += amount.y; Max.x -= amount.x; Max.y -= amount.y; }
    void        Clip(const ImRect& clip)        { if (Min.x < clip.Min.x) Min.x = clip.Min.x; if (Min.y < clip.Min.y) Min.y = clip.Min.y; if (Max.x > clip.Max.x) Max.x = clip.Max.x; if (Max.y > clip.Max.y) Max.y = clip.Max.y; }
    void        Floor()                         { Min.x = (float)(int)Min.x; Min.y = (float)(int)Min.y; Max.x = (float)(int)Max.x; Max.y = (float)(int)Max.y; }
    ImVec2      GetClosestPoint(ImVec2 p, bool on_edge) const
    {
        if (!on_edge && Contains(p))
            return p;
        if (p.x > Max.x) p.x = Max.x;
        else if (p.x < Min.x) p.x = Min.x;
        if (p.y > Max.y) p.y = Max.y;
        else if (p.y < Min.y) p.y = Min.y;
        return p;
    }
};


struct ImGuiColMod
{
    ImGuiCol    Col;
    ImVec4      BackupValue;
};


struct ImGuiStyleMod
{
    ImGuiStyleVar   VarIdx;
    union           { int BackupInt[2]; float BackupFloat[2]; };
    ImGuiStyleMod(ImGuiStyleVar idx, int v)     { VarIdx = idx; BackupInt[0] = v; }
    ImGuiStyleMod(ImGuiStyleVar idx, float v)   { VarIdx = idx; BackupFloat[0] = v; }
    ImGuiStyleMod(ImGuiStyleVar idx, ImVec2 v)  { VarIdx = idx; BackupFloat[0] = v.x; BackupFloat[1] = v.y; }
};


struct ImGuiGroupData
{
    ImVec2      BackupCursorPos;
    ImVec2      BackupCursorMaxPos;
    float       BackupIndentX;
    float       BackupGroupOffsetX;
    float       BackupCurrentLineHeight;
    float       BackupCurrentLineTextBaseOffset;
    float       BackupLogLinePosY;
    bool        BackupActiveIdIsAlive;
    bool        AdvanceCursor;
};


struct ImGuiColumnData
{
    float       OffsetNorm;     
    
};


struct  ImGuiSimpleColumns
{
    int         Count;
    float       Spacing;
    float       Width, NextWidth;
    float       Pos[8], NextWidths[8];

    ImGuiSimpleColumns();
    void        Update(int count, float spacing, bool clear);
    float       DeclColumns(float w0, float w1, float w2);
    float       CalcExtraSpace(float avail_w);
};


struct  ImGuiTextEditState
{
    ImGuiID             Id;                         
    ImVector<ImWchar>   Text;                       
    ImVector<char>      InitialText;                
    ImVector<char>      TempTextBuffer;
    int                 CurLenA, CurLenW;           
    int                 BufSizeA;                   
    float               ScrollX;
    ImGuiStb::STB_TexteditState   StbState;
    float               CursorAnim;
    bool                CursorFollow;
    bool                SelectedAllMouseLock;

    ImGuiTextEditState()                            { memset(this, 0, sizeof(*this)); }
    void                CursorAnimReset()           { CursorAnim = -0.30f; }                                   
    void                CursorClamp()               { StbState.cursor = ImMin(StbState.cursor, CurLenW); StbState.select_start = ImMin(StbState.select_start, CurLenW); StbState.select_end = ImMin(StbState.select_end, CurLenW); }
    bool                HasSelection() const        { return StbState.select_start != StbState.select_end; }
    void                ClearSelection()            { StbState.select_start = StbState.select_end = StbState.cursor; }
    void                SelectAll()                 { StbState.select_start = 0; StbState.select_end = CurLenW; StbState.cursor = StbState.select_end; StbState.has_preferred_x = false; }
    void                OnKeyPressed(int key);
};


struct ImGuiIniData
{
    char*       Name;
    ImGuiID     Id;
    ImVec2      Pos;
    ImVec2      Size;
    bool        Collapsed;
};


struct ImGuiMouseCursorData
{
    ImGuiMouseCursor    Type;
    ImVec2              HotOffset;
    ImVec2              Size;
    ImVec2              TexUvMin[2];
    ImVec2              TexUvMax[2];
};


struct ImGuiPopupRef
{
    ImGuiID         PopupId;        
    ImGuiWindow*    Window;         
    ImGuiWindow*    ParentWindow;   
    ImGuiID         ParentMenuSet;  
    ImVec2          MousePosOnOpen; 

    ImGuiPopupRef(ImGuiID id, ImGuiWindow* parent_window, ImGuiID parent_menu_set, const ImVec2& mouse_pos) { PopupId = id; Window = 0; ParentWindow = parent_window; ParentMenuSet = parent_menu_set; MousePosOnOpen = mouse_pos; }
};


struct ImGuiContext
{
    bool                    Initialized;
    ImGuiIO                 IO;
    ImGuiStyle              Style;
    ImFont*                 Font;                               
    float                   FontSize;                           
    float                   FontBaseSize;                       
    ImVec2                  FontTexUvWhitePixel;                

    float                   Time;
    int                     FrameCount;
    int                     FrameCountEnded;
    int                     FrameCountRendered;
    ImVector<ImGuiWindow*>  Windows;
    ImVector<ImGuiWindow*>  WindowsSortBuffer;
    ImGuiWindow*            CurrentWindow;                      
    ImVector<ImGuiWindow*>  CurrentWindowStack;
    ImGuiWindow*            FocusedWindow;                      
    ImGuiWindow*            HoveredWindow;                      
    ImGuiWindow*            HoveredRootWindow;                  
    ImGuiID                 HoveredId;                          
    bool                    HoveredIdAllowOverlap;
    ImGuiID                 HoveredIdPreviousFrame;
    ImGuiID                 ActiveId;                           
    ImGuiID                 ActiveIdPreviousFrame;
    bool                    ActiveIdIsAlive;
    bool                    ActiveIdIsJustActivated;            
    bool                    ActiveIdAllowOverlap;               
    ImVec2                  ActiveIdClickOffset;                
    ImGuiWindow*            ActiveIdWindow;
    ImGuiWindow*            MovedWindow;                        
    ImGuiID                 MovedWindowMoveId;                  
    ImVector<ImGuiIniData>  Settings;                           
    float                   SettingsDirtyTimer;                 
    ImVector<ImGuiColMod>   ColorModifiers;                     
    ImVector<ImGuiStyleMod> StyleModifiers;                     
    ImVector<ImFont*>       FontStack;                          
    ImVector<ImGuiPopupRef> OpenPopupStack;                     
    ImVector<ImGuiPopupRef> CurrentPopupStack;                  

    
    ImVec2                  SetNextWindowPosVal;
    ImVec2                  SetNextWindowSizeVal;
    ImVec2                  SetNextWindowContentSizeVal;
    bool                    SetNextWindowCollapsedVal;
    ImGuiSetCond            SetNextWindowPosCond;
    ImGuiSetCond            SetNextWindowSizeCond;
    ImGuiSetCond            SetNextWindowContentSizeCond;
    ImGuiSetCond            SetNextWindowCollapsedCond;
    ImRect                  SetNextWindowSizeConstraintRect;           
    ImGuiSizeConstraintCallback SetNextWindowSizeConstraintCallback;
    void*                       SetNextWindowSizeConstraintCallbackUserData;
    bool                    SetNextWindowSizeConstraint;
    bool                    SetNextWindowFocus;
    bool                    SetNextTreeNodeOpenVal;
    ImGuiSetCond            SetNextTreeNodeOpenCond;

    
    ImDrawData              RenderDrawData;                     
    ImVector<ImDrawList*>   RenderDrawLists[3];
    float                   ModalWindowDarkeningRatio;
    ImDrawList              OverlayDrawList;                    
    ImGuiMouseCursor        MouseCursor;
    ImGuiMouseCursorData    MouseCursorData[ImGuiMouseCursor_Count_];

    
    ImGuiTextEditState      InputTextState;
    ImFont                  InputTextPasswordFont;
    ImGuiID                 ScalarAsInputTextId;                
    ImGuiStorage            ColorEditModeStorage;               
    float                   DragCurrentValue;                   
    ImVec2                  DragLastMouseDelta;
    float                   DragSpeedDefaultRatio;              
    float                   DragSpeedScaleSlow;
    float                   DragSpeedScaleFast;
    ImVec2                  ScrollbarClickDeltaToGrabCenter;    
    char                    Tooltip[1024];
    char*                   PrivateClipboard;                   
    ImVec2                  OsImePosRequest, OsImePosSet;       

    
    bool                    LogEnabled;
    FILE*                   LogFile;                            
    ImGuiTextBuffer*        LogClipboard;                       
    int                     LogStartDepth;
    int                     LogAutoExpandMaxDepth;

    
    float                   FramerateSecPerFrame[120];          
    int                     FramerateSecPerFrameIdx;
    float                   FramerateSecPerFrameAccum;
    int                     CaptureMouseNextFrame;              
    int                     CaptureKeyboardNextFrame;
    char                    TempBuffer[1024*3+1];               

    ImGuiContext()
    {
        Initialized = false;
        Font = 0;
        FontSize = FontBaseSize = 0.0f;
        FontTexUvWhitePixel = ImVec2(0.0f, 0.0f);

        Time = 0.0f;
        FrameCount = 0;
        FrameCountEnded = FrameCountRendered = -1;
        CurrentWindow = 0;
        FocusedWindow = 0;
        HoveredWindow = 0;
        HoveredRootWindow = 0;
        HoveredId = 0;
        HoveredIdAllowOverlap = false;
        HoveredIdPreviousFrame = 0;
        ActiveId = 0;
        ActiveIdPreviousFrame = 0;
        ActiveIdIsAlive = false;
        ActiveIdIsJustActivated = false;
        ActiveIdAllowOverlap = false;
        ActiveIdClickOffset = ImVec2(-1,-1);
        ActiveIdWindow = 0;
        MovedWindow = 0;
        MovedWindowMoveId = 0;
        SettingsDirtyTimer = 0.0f;

        SetNextWindowPosVal = ImVec2(0.0f, 0.0f);
        SetNextWindowSizeVal = ImVec2(0.0f, 0.0f);
        SetNextWindowCollapsedVal = false;
        SetNextWindowPosCond = 0;
        SetNextWindowSizeCond = 0;
        SetNextWindowContentSizeCond = 0;
        SetNextWindowCollapsedCond = 0;
        SetNextWindowSizeConstraintRect = ImRect();
        SetNextWindowSizeConstraintCallback = 0;
        SetNextWindowSizeConstraintCallbackUserData = 0;
        SetNextWindowSizeConstraint = false;
        SetNextWindowFocus = false;
        SetNextTreeNodeOpenVal = false;
        SetNextTreeNodeOpenCond = 0;

        ScalarAsInputTextId = 0;
        DragCurrentValue = 0.0f;
        DragLastMouseDelta = ImVec2(0.0f, 0.0f);
        DragSpeedDefaultRatio = 1.0f / 100.0f;
        DragSpeedScaleSlow = 0.01f;
        DragSpeedScaleFast = 10.0f;
        ScrollbarClickDeltaToGrabCenter = ImVec2(0.0f, 0.0f);
        memset(Tooltip, 0, sizeof(Tooltip));
        PrivateClipboard = 0;
        OsImePosRequest = OsImePosSet = ImVec2(-1.0f, -1.0f);

        ModalWindowDarkeningRatio = 0.0f;
        OverlayDrawList._OwnerName = "##Overlay"; 
        MouseCursor = ImGuiMouseCursor_Arrow;
        memset(MouseCursorData, 0, sizeof(MouseCursorData));

        LogEnabled = false;
        LogFile = 0;
        LogClipboard = 0;
        LogStartDepth = 0;
        LogAutoExpandMaxDepth = 2;

        memset(FramerateSecPerFrame, 0, sizeof(FramerateSecPerFrame));
        FramerateSecPerFrameIdx = 0;
        FramerateSecPerFrameAccum = 0.0f;
        CaptureMouseNextFrame = CaptureKeyboardNextFrame = -1;
        memset(TempBuffer, 0, sizeof(TempBuffer));
    }
};



struct  ImGuiDrawContext
{
    ImVec2                  CursorPos;
    ImVec2                  CursorPosPrevLine;
    ImVec2                  CursorStartPos;
    ImVec2                  CursorMaxPos;           
    float                   CurrentLineHeight;
    float                   CurrentLineTextBaseOffset;
    float                   PrevLineHeight;
    float                   PrevLineTextBaseOffset;
    float                   LogLinePosY;
    int                     TreeDepth;
    ImGuiID                 LastItemId;
    ImRect                  LastItemRect;
    bool                    LastItemHoveredAndUsable;  
    bool                    LastItemHoveredRect;       
    bool                    MenuBarAppending;
    float                   MenuBarOffsetX;
    ImVector<ImGuiWindow*>  ChildWindows;
    ImGuiStorage*           StateStorage;
    ImGuiLayoutType         LayoutType;

    
    float                   ItemWidth;              
    float                   TextWrapPos;            
    bool                    AllowKeyboardFocus;     
    bool                    ButtonRepeat;           
    ImVector<float>         ItemWidthStack;
    ImVector<float>         TextWrapPosStack;
    ImVector<bool>          AllowKeyboardFocusStack;
    ImVector<bool>          ButtonRepeatStack;
    ImVector<ImGuiGroupData>GroupStack;
    ImGuiColorEditMode      ColorEditMode;
    int                     StackSizesBackup[6];    

    float                   IndentX;                
    float                   GroupOffsetX;
    float                   ColumnsOffsetX;         
    int                     ColumnsCurrent;
    int                     ColumnsCount;
    float                   ColumnsMinX;
    float                   ColumnsMaxX;
    float                   ColumnsStartPosY;
    float                   ColumnsCellMinY;
    float                   ColumnsCellMaxY;
    bool                    ColumnsShowBorders;
    ImGuiID                 ColumnsSetId;
    ImVector<ImGuiColumnData> ColumnsData;

    ImGuiDrawContext()
    {
        CursorPos = CursorPosPrevLine = CursorStartPos = CursorMaxPos = ImVec2(0.0f, 0.0f);
        CurrentLineHeight = PrevLineHeight = 0.0f;
        CurrentLineTextBaseOffset = PrevLineTextBaseOffset = 0.0f;
        LogLinePosY = -1.0f;
        TreeDepth = 0;
        LastItemId = 0;
        LastItemRect = ImRect(0.0f,0.0f,0.0f,0.0f);
        LastItemHoveredAndUsable = LastItemHoveredRect = false;
        MenuBarAppending = false;
        MenuBarOffsetX = 0.0f;
        StateStorage = 0;
        LayoutType = ImGuiLayoutType_Vertical;
        ItemWidth = 0.0f;
        ButtonRepeat = false;
        AllowKeyboardFocus = true;
        TextWrapPos = -1.0f;
        ColorEditMode = ImGuiColorEditMode_RGB;
        memset(StackSizesBackup, 0, sizeof(StackSizesBackup));

        IndentX = 0.0f;
        GroupOffsetX = 0.0f;
        ColumnsOffsetX = 0.0f;
        ColumnsCurrent = 0;
        ColumnsCount = 1;
        ColumnsMinX = ColumnsMaxX = 0.0f;
        ColumnsStartPosY = 0.0f;
        ColumnsCellMinY = ColumnsCellMaxY = 0.0f;
        ColumnsShowBorders = true;
        ColumnsSetId = 0;
    }
};


struct  ImGuiWindow
{
    char*                   Name;
    ImGuiID                 ID;                                 
    ImGuiWindowFlags        Flags;                              
    int                     IndexWithinParent;                  
    ImVec2                  PosFloat;
    ImVec2                  Pos;                                
    ImVec2                  Size;                               
    ImVec2                  SizeFull;                           
    ImVec2                  SizeContents;                       
    ImVec2                  SizeContentsExplicit;               
    ImRect                  ContentsRegionRect;                 
    ImVec2                  WindowPadding;                      
    ImGuiID                 MoveId;                             
    ImVec2                  Scroll;
    ImVec2                  ScrollTarget;                       
    ImVec2                  ScrollTargetCenterRatio;            
    bool                    ScrollbarX, ScrollbarY;
    ImVec2                  ScrollbarSizes;
    float                   BorderSize;
    bool                    Active;                             
    bool                    WasActive;
    bool                    Accessed;                           
    bool                    Collapsed;                          
    bool                    SkipItems;                          
    int                     BeginCount;                         
    ImGuiID                 PopupId;                            
    int                     AutoFitFramesX, AutoFitFramesY;
    bool                    AutoFitOnlyGrows;
    int                     AutoPosLastDirection;
    int                     HiddenFrames;
    int                     SetWindowPosAllowFlags;             
    int                     SetWindowSizeAllowFlags;            
    int                     SetWindowCollapsedAllowFlags;       
    bool                    SetWindowPosCenterWanted;

    ImGuiDrawContext        DC;                                 
    ImVector<ImGuiID>       IDStack;                            
    ImRect                  ClipRect;                           
    ImRect                  WindowRectClipped;                  
    int                     LastFrameActive;
    float                   ItemWidthDefault;
    ImGuiSimpleColumns      MenuColumns;                        
    ImGuiStorage            StateStorage;
    float                   FontWindowScale;                    
    ImDrawList*             DrawList;
    ImGuiWindow*            RootWindow;                         
    ImGuiWindow*            RootNonPopupWindow;                 
    ImGuiWindow*            ParentWindow;                       

    
    int                     FocusIdxAllCounter;                 
    int                     FocusIdxTabCounter;                 
    int                     FocusIdxAllRequestCurrent;          
    int                     FocusIdxTabRequestCurrent;          
    int                     FocusIdxAllRequestNext;             
    int                     FocusIdxTabRequestNext;             

public:
    ImGuiWindow(const char* name);
    ~ImGuiWindow();

    ImGuiID     GetID(const char* str, const char* str_end = 0);
    ImGuiID     GetID(const void* ptr);
    ImGuiID     GetIDNoKeepAlive(const char* str, const char* str_end = 0);

    ImRect      Rect() const                            { return ImRect(Pos.x, Pos.y, Pos.x+Size.x, Pos.y+Size.y); }
    float       CalcFontSize() const                    { return GImGui->FontBaseSize * FontWindowScale; }
    float       TitleBarHeight() const                  { return (Flags & ImGuiWindowFlags_NoTitleBar) ? 0.0f : CalcFontSize() + GImGui->Style.FramePadding.y * 2.0f; }
    ImRect      TitleBarRect() const                    { return ImRect(Pos, ImVec2(Pos.x + SizeFull.x, Pos.y + TitleBarHeight())); }
    float       MenuBarHeight() const                   { return (Flags & ImGuiWindowFlags_MenuBar) ? CalcFontSize() + GImGui->Style.FramePadding.y * 2.0f : 0.0f; }
    ImRect      MenuBarRect() const                     { float y1 = Pos.y + TitleBarHeight(); return ImRect(Pos.x, y1, Pos.x + SizeFull.x, y1 + MenuBarHeight()); }
};






namespace ImGui
{
    
    
    
    
    inline    ImGuiWindow*  GetCurrentWindowRead()      { ImGuiContext& g = *GImGui; return g.CurrentWindow; }
    inline    ImGuiWindow*  GetCurrentWindow()          { ImGuiContext& g = *GImGui; g.CurrentWindow->Accessed = true; return g.CurrentWindow; }
     ImGuiWindow*  GetParentWindow();
     ImGuiWindow*  FindWindowByName(const char* name);
     void          FocusWindow(ImGuiWindow* window);

     void          EndFrame();                 

     void          SetActiveID(ImGuiID id, ImGuiWindow* window);
	 void          ClearActiveID();
     void          SetHoveredID(ImGuiID id);
     void          KeepAliveID(ImGuiID id);

     void          ItemSize(const ImVec2& size, float text_offset_y = 0.0f);
     void          ItemSize(const ImRect& bb, float text_offset_y = 0.0f);
     bool          ItemAdd(const ImRect& bb, const ImGuiID* id);
     bool          IsClippedEx(const ImRect& bb, const ImGuiID* id, bool clip_even_when_logged);
     bool          IsHovered(const ImRect& bb, ImGuiID id, bool flatten_childs = false);
     bool          FocusableItemRegister(ImGuiWindow* window, bool is_active, bool tab_stop = true);      
     void          FocusableItemUnregister(ImGuiWindow* window);
     ImVec2        CalcItemSize(ImVec2 size, float default_x, float default_y);
     float         CalcWrapWidthForPos(const ImVec2& pos, float wrap_pos_x);

     void          OpenPopupEx(const char* str_id, bool reopen_existing);

    
    
    
     void          RenderText(ImVec2 pos, const char* text, const char* text_end = 0, bool hide_text_after_hash = true);
     void          RenderTextWrapped(ImVec2 pos, const char* text, const char* text_end, float wrap_width);
     void          RenderTextClipped(const ImVec2& pos_min, const ImVec2& pos_max, const char* text, const char* text_end, const ImVec2* text_size_if_known, const ImVec2& align = ImVec2(0,0), const ImRect* clip_rect = 0);
     void          RenderFrame(ImVec2 p_min, ImVec2 p_max, ImU32 fill_col, bool border = true, float rounding = 0.0f);
     void          RenderCollapseTriangle(ImVec2 pos, bool is_open, float scale = 1.0f);
     void          RenderBullet(ImVec2 pos);
     void          RenderCheckMark(ImVec2 pos, ImU32 col);
     const char*   FindRenderedTextEnd(const char* text, const char* text_end = 0); 

     bool          ButtonBehavior(const ImRect& bb, ImGuiID id, bool* out_hovered, bool* out_held, ImGuiButtonFlags flags = 0);
     bool          ButtonEx(const char* label, const ImVec2& size_arg = ImVec2(0,0), ImGuiButtonFlags flags = 0);
     bool          CloseButton(ImGuiID id, const ImVec2& pos, float radius);

     bool          SliderBehavior(const ImRect& frame_bb, ImGuiID id, float* v, float v_min, float v_max, float power, int decimal_precision, ImGuiSliderFlags flags = 0);
     bool          SliderFloatN(const char* label, float* v, int components, float v_min, float v_max, const char* display_format, float power);
     bool          SliderIntN(const char* label, int* v, int components, int v_min, int v_max, const char* display_format);

     bool          DragBehavior(const ImRect& frame_bb, ImGuiID id, float* v, float v_speed, float v_min, float v_max, int decimal_precision, float power);
     bool          DragFloatN(const char* label, float* v, int components, float v_speed, float v_min, float v_max, const char* display_format, float power);
     bool          DragIntN(const char* label, int* v, int components, float v_speed, int v_min, int v_max, const char* display_format);

     bool          InputTextEx(const char* label, char* buf, int buf_size, const ImVec2& size_arg, ImGuiInputTextFlags flags, ImGuiTextEditCallback callback = 0, void* user_data = 0);
     bool          InputFloatN(const char* label, float* v, int components, int decimal_precision, ImGuiInputTextFlags extra_flags);
     bool          InputIntN(const char* label, int* v, int components, ImGuiInputTextFlags extra_flags);
     bool          InputScalarEx(const char* label, ImGuiDataType data_type, void* data_ptr, void* step_ptr, void* step_fast_ptr, const char* scalar_format, ImGuiInputTextFlags extra_flags);
     bool          InputScalarAsWidgetReplacement(const ImRect& aabb, const char* label, ImGuiDataType data_type, void* data_ptr, ImGuiID id, int decimal_precision);

     bool          TreeNodeBehavior(ImGuiID id, ImGuiTreeNodeFlags flags, const char* label, const char* label_end = 0);
     bool          TreeNodeBehaviorIsOpen(ImGuiID id, ImGuiTreeNodeFlags flags = 0);                     
     void          TreePushRawID(ImGuiID id);

     void          PlotEx(ImGuiPlotType plot_type, const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size);

     int           ParseFormatPrecision(const char* fmt, int default_value);
     float         RoundScalar(float value, int decimal_precision);

} 






#pragma warning (pop)
#line 777 "c:\\biblioteki\\imgui-sfml\\imgui_internal.h"
#line 19 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"




#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\malloc.h"







#pragma once



#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_malloc.h"








#pragma once



__pragma(pack(push, 8)) extern "C" {





































#line 52 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_malloc.h"

     
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _calloc_base(
      size_t _Count,
      size_t _Size
    );

     
__declspec(dllimport)  __declspec(allocator) __declspec(restrict) 
void* __cdecl calloc(
      __declspec(guard(overflow)) size_t _Count,
      __declspec(guard(overflow)) size_t _Size
    );

 
__declspec(dllimport) int __cdecl _callnewh(
      size_t _Size
    );

     
__declspec(dllimport) __declspec(allocator) 
void* __cdecl _expand(
                void*  _Block,
      __declspec(guard(overflow)) size_t _Size
    );

__declspec(dllimport)
void __cdecl _free_base(
        void* _Block
    );

__declspec(dllimport) 
void __cdecl free(
        void* _Block
    );

     
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _malloc_base(
      size_t _Size
    );

     
__declspec(dllimport) __declspec(allocator)  __declspec(restrict) 
void* __cdecl malloc(
      __declspec(guard(overflow)) size_t _Size
    );

 
__declspec(dllimport)
size_t __cdecl _msize_base(
      void* _Block
    );

 
__declspec(dllimport) 
size_t __cdecl _msize(
      void* _Block
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _realloc_base(
         void*  _Block,
                                 size_t _Size
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict) 
void* __cdecl realloc(
        void*  _Block,
      __declspec(guard(overflow))        size_t _Size
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _recalloc_base(
        void*  _Block,
                                size_t _Count,
                                size_t _Size
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _recalloc(
        void*  _Block,
      __declspec(guard(overflow))        size_t _Count,
      __declspec(guard(overflow))        size_t _Size
    );

__declspec(dllimport)
void __cdecl _aligned_free(
        void* _Block
    );

     
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_malloc(
      __declspec(guard(overflow)) size_t _Size,
                         size_t _Alignment
    );

     
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_offset_malloc(
      __declspec(guard(overflow)) size_t _Size,
                         size_t _Alignment,
                         size_t _Offset
    );

 
__declspec(dllimport)
size_t __cdecl _aligned_msize(
      void*  _Block,
               size_t _Alignment,
               size_t _Offset
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_offset_realloc(
        void*  _Block,
      __declspec(guard(overflow))        size_t _Size,
                                size_t _Alignment,
                                size_t _Offset
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_offset_recalloc(
        void*  _Block,
      __declspec(guard(overflow))        size_t _Count,
      __declspec(guard(overflow))        size_t _Size,
                                size_t _Alignment,
                                size_t _Offset
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_realloc(
        void*  _Block,
      __declspec(guard(overflow))        size_t _Size,
                                size_t _Alignment
    );

       
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_recalloc(
        void*  _Block,
      __declspec(guard(overflow))        size_t _Count,
      __declspec(guard(overflow))        size_t _Size,
                                size_t _Alignment
    );


















#line 225 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_malloc.h"



} __pragma(pack(pop))
#line 13 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\malloc.h"

__pragma(pack(push, 8)) extern "C" {







    
#line 24 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\malloc.h"















typedef struct _heapinfo
{
    int* _pentry;
    size_t _size;
    int _useflag;
} _HEAPINFO;








   
void* __cdecl _alloca(  size_t _Size);





    __declspec(dllimport) intptr_t __cdecl _get_heap_handle(void);

     
    __declspec(dllimport) int __cdecl _heapmin(void);

    
        __declspec(dllimport) int __cdecl _heapwalk(  _HEAPINFO* _EntryInfo);
    #line 68 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\malloc.h"

    
          __declspec(dllimport) int __cdecl _heapchk(void);
    #line 72 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\malloc.h"

    __declspec(dllimport) int __cdecl _resetstkoflw(void);

    
    
    

    


        
    #line 84 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\malloc.h"

    typedef char __static_assert_t[(sizeof(unsigned int) <= 8) != 0];


    #pragma warning(push)
    #pragma warning(disable:6540)

    __inline void* _MarkAllocaS(   void* _Ptr, unsigned int _Marker)
    {
        if (_Ptr)
        {
            *((unsigned int*)_Ptr) = _Marker;
            _Ptr = (char*)_Ptr + 8;
        }
        return _Ptr;
    }

    __inline size_t _MallocaComputeSize(size_t _Size)
    {
        size_t _MarkedSize = _Size + 8;
        return _MarkedSize > _Size ? _MarkedSize : 0;
    }

    #pragma warning(pop)

#line 110 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\malloc.h"





    
        
        




    #line 123 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\malloc.h"












#line 136 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\malloc.h"




#line 141 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\malloc.h"
#line 142 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\malloc.h"

    

    #pragma warning(push)
    #pragma warning(disable: 6014)
    __inline void __cdecl _freea(    void* _Memory)
    {
        unsigned int _Marker;
        if (_Memory)
        {
            _Memory = (char*)_Memory - 8;
            _Marker = *(unsigned int*)_Memory;
            if (_Marker == 0xDDDD)
            {
                free(_Memory);
            }
            





        }
    }
    #pragma warning(pop)

#line 169 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\malloc.h"




    
#line 175 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\malloc.h"



} __pragma(pack(pop))
#line 24 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"




#line 29 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"
#line 30 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"


#pragma warning (disable: 4505) 
#pragma warning (disable: 4996) 

#line 36 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"














#line 51 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"















#pragma warning (push)
#pragma warning (disable: 4456)                             
#line 69 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"

















#line 87 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"
#line 1 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"































































#line 65 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"


extern "C" {
#line 69 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"

typedef struct stbrp_context stbrp_context;
typedef struct stbrp_node    stbrp_node;
typedef struct stbrp_rect    stbrp_rect;




typedef unsigned short stbrp_coord;
#line 79 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"

static void stbrp_pack_rects (stbrp_context *context, stbrp_rect *rects, int num_rects);





















struct stbrp_rect
{
   
   int            id;

   
   stbrp_coord    w, h;

   
   stbrp_coord    x, y;
   int            was_packed;  

}; 


static void stbrp_init_target (stbrp_context *context, int width, int height, stbrp_node *nodes, int num_nodes);




















static void stbrp_setup_allow_out_of_mem (stbrp_context *context, int allow_out_of_mem);





static void stbrp_setup_heuristic (stbrp_context *context, int heuristic);




enum
{
   STBRP_HEURISTIC_Skyline_default=0,
   STBRP_HEURISTIC_Skyline_BL_sortHeight = STBRP_HEURISTIC_Skyline_default,
   STBRP_HEURISTIC_Skyline_BF_sortHeight
};







struct stbrp_node
{
   stbrp_coord  x,y;
   stbrp_node  *next;
};

struct stbrp_context
{
   int width;
   int height;
   int align;
   int init_mode;
   int heuristic;
   int num_nodes;
   stbrp_node *active_head;
   stbrp_node *free_head;
   stbrp_node extra[2]; 
};


}
#line 184 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"

#line 186 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"








#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"







#pragma once




#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_search.h"










#pragma once




__pragma(pack(push, 8)) extern "C" {


    typedef int (__cdecl* _CoreCrtSecureSearchSortCompareFunction)(void*, void const*, void const*);
    typedef int (__cdecl* _CoreCrtNonSecureSearchSortCompareFunction)(void const*, void const*);




     
    __declspec(dllimport) void* __cdecl bsearch_s(
                                                        void const* _Key,
          void const* _Base,
                                                        rsize_t     _NumOfElements,
                                                        rsize_t     _SizeOfElements,
                            _CoreCrtSecureSearchSortCompareFunction _CompareFunction,
                                                    void*       _Context
        );

    __declspec(dllimport) void __cdecl qsort_s(
          void*   _Base,
                                                             rsize_t _NumOfElements,
                                                             rsize_t _SizeOfElements,
                             _CoreCrtSecureSearchSortCompareFunction _CompareFunction,
                                                         void*   _Context
        );

#line 44 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_search.h"



 
__declspec(dllimport) void* __cdecl bsearch(
                                                    void const* _Key,
      void const* _Base,
                                                    size_t      _NumOfElements,
                                                    size_t      _SizeOfElements,
                     _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction
    );

__declspec(dllimport) void __cdecl qsort(
      void*  _Base,
                                                         size_t _NumOfElements,
                                                         size_t _SizeOfElements,
                     _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction
    );

 
__declspec(dllimport) void* __cdecl _lfind_s(
                                                       void const*   _Key,
      void const*   _Base,
                                                    unsigned int* _NumOfElements,
                                                       size_t        _SizeOfElements,
                             _CoreCrtSecureSearchSortCompareFunction _CompareFunction,
                                                       void*         _Context
    );

 
__declspec(dllimport) void* __cdecl _lfind(
                                                       void const*   _Key,
      void const*   _Base,
                                                    unsigned int* _NumOfElements,
                                                       unsigned int  _SizeOfElements,
                          _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction
    );

 
__declspec(dllimport) void* __cdecl _lsearch_s(
                                                             void const*   _Key,
      void*         _Base,
                                                          unsigned int* _NumOfElements,
                                                             size_t        _SizeOfElements,
                                   _CoreCrtSecureSearchSortCompareFunction _CompareFunction,
                                                             void*         _Context
    );

 
__declspec(dllimport) void* __cdecl _lsearch(
                                                             void const*   _Key,
      void*         _Base,
                                                          unsigned int* _NumOfElements,
                                                             unsigned int  _SizeOfElements,
                                _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction
    );




















































































#line 185 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_search.h"





      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_lfind" ". See online help for details."))
    __declspec(dllimport) void* __cdecl lfind(
                                                           void const*   _Key,
          void const*   _Base,
                                                        unsigned int* _NumOfElements,
                                                           unsigned int  _SizeOfElements,
                              _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_lsearch" ". See online help for details."))
    __declspec(dllimport) void* __cdecl lsearch(
                                                                void const*   _Key,
          void*         _Base,
                                                             unsigned int* _NumOfElements,
                                                                unsigned int  _SizeOfElements,
                                   _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction
        );

#line 209 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_search.h"



} __pragma(pack(pop))
#line 14 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"
#line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"








#pragma once



__pragma(pack(push, 8)) extern "C" {


































     
    
    __declspec(dllimport) errno_t __cdecl _itow_s(
                                  int      _Value,
          wchar_t* _Buffer,
                                  size_t   _BufferCount,
                                  int      _Radix
        );

    extern "C++" { template <size_t _Size> inline errno_t __cdecl _itow_s(  int _Value, wchar_t (&_Buffer)[_Size],   int _Radix) throw() { return _itow_s(_Value, _Buffer, _Size, _Radix); } }
#line 63 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

     __declspec(dllimport) wchar_t* __cdecl _itow( int _Value,   wchar_t *_Buffer,  int _Radix);
#line 70 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

     
    
    __declspec(dllimport) errno_t __cdecl _ltow_s(
                                  long     _Value,
          wchar_t* _Buffer,
                                  size_t   _BufferCount,
                                  int      _Radix
        );

    extern "C++" { template <size_t _Size> inline errno_t __cdecl _ltow_s(  long _Value, wchar_t (&_Buffer)[_Size],   int _Radix) throw() { return _ltow_s(_Value, _Buffer, _Size, _Radix); } }
#line 86 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

     __declspec(dllimport) wchar_t* __cdecl _ltow( long _Value,   wchar_t *_Buffer,  int _Radix);
#line 93 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

    
    __declspec(dllimport) errno_t __cdecl _ultow_s(
                                  unsigned long _Value,
          wchar_t*      _Buffer,
                                  size_t        _BufferCount,
                                  int           _Radix
        );

    extern "C++" { template <size_t _Size> inline errno_t __cdecl _ultow_s(  unsigned long _Value, wchar_t (&_Buffer)[_Size],   int _Radix) throw() { return _ultow_s(_Value, _Buffer, _Size, _Radix); } }
#line 108 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

     __declspec(dllimport) wchar_t* __cdecl _ultow( unsigned long _Value,   wchar_t *_Buffer,  int _Radix);
#line 115 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

     
    __declspec(dllimport) double __cdecl wcstod(
                            wchar_t const* _String,
            wchar_t**      _EndPtr
        );

     
    __declspec(dllimport) double __cdecl _wcstod_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) long __cdecl wcstol(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix
        );

     
    __declspec(dllimport) long __cdecl _wcstol_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) long long __cdecl wcstoll(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix
        );

     
    __declspec(dllimport) long long __cdecl _wcstoll_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) unsigned long __cdecl wcstoul(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix
        );

     
    __declspec(dllimport) unsigned long __cdecl _wcstoul_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) unsigned long long __cdecl wcstoull(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix
        );

     
    __declspec(dllimport) unsigned long long __cdecl _wcstoull_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) long double __cdecl wcstold(
                            wchar_t const* _String,
            wchar_t**      _EndPtr
        );

     
    __declspec(dllimport) long double __cdecl _wcstold_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) float __cdecl wcstof(
                            wchar_t const* _String,
            wchar_t**      _EndPtr
        );

     
    __declspec(dllimport) float __cdecl _wcstof_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) double __cdecl _wtof(
          wchar_t const* _String
        );

     
    __declspec(dllimport) double __cdecl _wtof_l(
            wchar_t const* _String,
          _locale_t      _Locale
        );

     
    __declspec(dllimport) int __cdecl _wtoi(
          wchar_t const* _String
        );

     
    __declspec(dllimport) int __cdecl _wtoi_l(
            wchar_t const* _String,
          _locale_t      _Locale
        );

     
    __declspec(dllimport) long __cdecl _wtol(
          wchar_t const* _String
        );

     
    __declspec(dllimport) long __cdecl _wtol_l(
            wchar_t const* _String,
          _locale_t      _Locale
        );

     
    __declspec(dllimport) long long __cdecl _wtoll(
          wchar_t const* _String
        );

     
    __declspec(dllimport) long long __cdecl _wtoll_l(
            wchar_t const* _String,
          _locale_t      _Locale
        );

    
    __declspec(dllimport) errno_t __cdecl _i64tow_s(
                                  __int64  _Value,
          wchar_t* _Buffer,
                                  size_t   _BufferCount,
                                  int      _Radix
        );

    
    __declspec(dllimport) wchar_t* __cdecl _i64tow(
                            __int64  _Value,
            wchar_t* _Buffer,
                            int      _Radix
        );

    
    __declspec(dllimport) errno_t __cdecl _ui64tow_s(
                                  unsigned __int64 _Value,
          wchar_t*         _Buffer,
                                  size_t           _BufferCount,
                                  int              _Radix
        );

    
    __declspec(dllimport) wchar_t* __cdecl _ui64tow(
                            unsigned __int64 _Value,
            wchar_t*         _Buffer,
                            int              _Radix
        );

     
    __declspec(dllimport) __int64 __cdecl _wtoi64(
          wchar_t const* _String
        );

     
    __declspec(dllimport) __int64 __cdecl _wtoi64_l(
            wchar_t const* _String,
          _locale_t      _Locale
        );

     
    __declspec(dllimport) __int64 __cdecl _wcstoi64(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix
        );

     
    __declspec(dllimport) __int64 __cdecl _wcstoi64_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix,
                          _locale_t      _Locale
        );

     
    __declspec(dllimport) unsigned __int64 __cdecl _wcstoui64(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix
        );

     
    __declspec(dllimport) unsigned __int64 __cdecl _wcstoui64_l(
                            wchar_t const* _String,
            wchar_t**      _EndPtr,
                              int            _Radix,
                          _locale_t      _Locale
        );

    
    

     
     
    __declspec(dllimport) __declspec(allocator) wchar_t* __cdecl _wfullpath(
          wchar_t*       _Buffer,
                                    wchar_t const* _Path,
                                      size_t         _BufferCount
        );

    

    
    __declspec(dllimport) errno_t __cdecl _wmakepath_s(
          wchar_t*       _Buffer,
                                  size_t         _BufferCount,
                            wchar_t const* _Drive,
                            wchar_t const* _Dir,
                            wchar_t const* _Filename,
                            wchar_t const* _Ext
        );

    extern "C++" { template <size_t _Size> inline errno_t __cdecl _wmakepath_s(wchar_t (&_Buffer)[_Size],   wchar_t const* _Drive,   wchar_t const* _Dir,   wchar_t const* _Filename,   wchar_t const* _Ext) throw() { return _wmakepath_s(_Buffer, _Size, _Drive, _Dir, _Filename, _Ext); } }
#line 361 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
 __declspec(dllimport) void __cdecl _wmakepath(  wchar_t *_Buffer,  wchar_t const* _Drive,  wchar_t const* _Dir,  wchar_t const* _Filename,  wchar_t const* _Ext);
#line 373 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"
#pragma warning(pop)

    __declspec(dllimport) void __cdecl _wperror(
          wchar_t const* _ErrorMessage
        );

    
    __declspec(dllimport) void __cdecl _wsplitpath(
                            wchar_t const* _FullPath,
            wchar_t*       _Drive,
            wchar_t*       _Dir,
            wchar_t*       _Filename,
            wchar_t*       _Ext
        );

    __declspec(dllimport) errno_t __cdecl _wsplitpath_s(
                                      wchar_t const* _FullPath,
             wchar_t*       _Drive,
                                        size_t         _DriveCount,
               wchar_t*       _Dir,
                                        size_t         _DirCount,
          wchar_t*       _Filename,
                                        size_t         _FilenameCount,
               wchar_t*       _Ext,
                                        size_t         _ExtCount
        );

    extern "C++" { template <size_t _DriveSize, size_t _DirSize, size_t _NameSize, size_t _ExtSize> inline errno_t __cdecl _wsplitpath_s(   wchar_t const* _Path,   wchar_t (&_Drive)[_DriveSize],   wchar_t (&_Dir)[_DirSize],   wchar_t (&_Name)[_NameSize],   wchar_t (&_Ext)[_ExtSize] ) throw() { return _wsplitpath_s(_Path, _Drive, _DriveSize, _Dir, _DirSize, _Name, _NameSize, _Ext, _ExtSize); } }
#line 404 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"



    

        
        

        
        __declspec(dllimport) errno_t __cdecl _wdupenv_s(
                wchar_t**      _Buffer,
                                                                                size_t*        _BufferCount,
                                                                                   wchar_t const* _VarName
            );

        

          
        __declspec(dllimport) wchar_t* __cdecl _wgetenv(
              wchar_t const* _VarName
            );

         
        
        __declspec(dllimport) errno_t __cdecl _wgetenv_s(
                                         size_t*        _RequiredCount,
              wchar_t*       _Buffer,
                                          size_t         _BufferCount,
                                        wchar_t const* _VarName
            );

        extern "C++" { template <size_t _Size> inline   errno_t __cdecl _wgetenv_s(  size_t* _RequiredCount, wchar_t (&_Buffer)[_Size],   wchar_t const* _VarName) throw() { return _wgetenv_s(_RequiredCount, _Buffer, _Size, _VarName); } }
#line 442 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

         
        __declspec(dllimport) int __cdecl _wputenv(
              wchar_t const* _EnvString
            );

        
        __declspec(dllimport) errno_t __cdecl _wputenv_s(
              wchar_t const* _Name,
              wchar_t const* _Value
            );

        __declspec(dllimport) errno_t __cdecl _wsearchenv_s(
                                    wchar_t const* _Filename,
                                    wchar_t const* _VarName,
              wchar_t*       _Buffer,
                                      size_t         _BufferCount
            );

        extern "C++" { template <size_t _Size> inline errno_t __cdecl _wsearchenv_s(  wchar_t const* _Filename,   wchar_t const* _VarName, wchar_t (&_ResultPath)[_Size]) throw() { return _wsearchenv_s(_Filename, _VarName, _ResultPath, _Size); } }
#line 467 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

         __declspec(dllimport) void __cdecl _wsearchenv( wchar_t const* _Filename,  wchar_t const* _VarName,   wchar_t *_ResultPath);
#line 474 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"

        __declspec(dllimport) int __cdecl _wsystem(
              wchar_t const* _Command
            );

    #line 480 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"
#line 481 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\corecrt_wstdlib.h"



} __pragma(pack(pop))
#line 15 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"
#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"







#pragma once


#line 1 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\vcruntime.h"










































































































































































































































































































#line 12 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"

__pragma(pack(push, 8)) extern "C" {









    
    



#line 29 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"









































#line 71 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"


    


        
    #line 78 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"
#line 79 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"


    
        
    #line 84 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"
#line 85 "c:\\program files (x86)\\microsoft visual studio\\2017\\community\\vc\\tools\\msvc\\14.12.25827\\include\\limits.h"



} __pragma(pack(pop))
#line 16 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

__pragma(pack(push, 8)) extern "C" {




    
#line 24 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"









__declspec(dllimport) void __cdecl _swab(
        char* _Buf1,
        char* _Buf2,
                                                                  int   _SizeInBytes
    );













    __declspec(dllimport) __declspec(noreturn) void __cdecl exit(  int _Code);
    __declspec(dllimport) __declspec(noreturn) void __cdecl _exit(  int _Code);
    __declspec(dllimport) __declspec(noreturn) void __cdecl _Exit(  int _Code);
    __declspec(dllimport) __declspec(noreturn) void __cdecl quick_exit(  int _Code);
    __declspec(dllimport) __declspec(noreturn) void __cdecl abort(void);
#line 57 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"





__declspec(dllimport) unsigned int __cdecl _set_abort_behavior(
      unsigned int _Flags,
      unsigned int _Mask
    );




    

    typedef int (__cdecl* _onexit_t)(void);
    


#line 77 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"


    
    
#line 82 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

























































    int       __cdecl atexit(void (__cdecl*)(void));
    _onexit_t __cdecl _onexit(  _onexit_t _Func);
#line 142 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

int __cdecl at_quick_exit(void (__cdecl*)(void));









    
    typedef void (__cdecl* _purecall_handler)(void);

    
    typedef void (__cdecl* _invalid_parameter_handler)(
        wchar_t const*,
        wchar_t const*,
        wchar_t const*,
        unsigned int,
        uintptr_t
        );

    
     _purecall_handler __cdecl _set_purecall_handler(
          _purecall_handler _Handler
        );

     _purecall_handler __cdecl _get_purecall_handler(void);

    
    __declspec(dllimport) _invalid_parameter_handler __cdecl _set_invalid_parameter_handler(
          _invalid_parameter_handler _Handler
        );

    __declspec(dllimport) _invalid_parameter_handler __cdecl _get_invalid_parameter_handler(void);

    __declspec(dllimport) _invalid_parameter_handler __cdecl _set_thread_local_invalid_parameter_handler(
          _invalid_parameter_handler _Handler
        );

    __declspec(dllimport) _invalid_parameter_handler __cdecl _get_thread_local_invalid_parameter_handler(void);
#line 185 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"












#line 198 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"









 __declspec(dllimport) int __cdecl _set_error_mode(  int _Mode);




    __declspec(dllimport) int* __cdecl _errno(void);
    

    __declspec(dllimport) errno_t __cdecl _set_errno(  int _Value);
    __declspec(dllimport) errno_t __cdecl _get_errno(  int* _Value);

    __declspec(dllimport) unsigned long* __cdecl __doserrno(void);
    

    __declspec(dllimport) errno_t __cdecl _set_doserrno(  unsigned long _Value);
    __declspec(dllimport) errno_t __cdecl _get_doserrno(  unsigned long * _Value);

    
    __declspec(dllimport)  char** __cdecl __sys_errlist(void);
    

    __declspec(dllimport)  int * __cdecl __sys_nerr(void);
    

    __declspec(dllimport) void __cdecl perror(  char const* _ErrMsg);
#line 233 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"




 __declspec(dllimport) char**    __cdecl __p__pgmptr (void);
 __declspec(dllimport) wchar_t** __cdecl __p__wpgmptr(void);
 __declspec(dllimport) int*      __cdecl __p__fmode  (void);








    
    
    
#line 252 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 
__declspec(dllimport) errno_t __cdecl _get_pgmptr (  char**    _Value);

 
__declspec(dllimport) errno_t __cdecl _get_wpgmptr(  wchar_t** _Value);

__declspec(dllimport) errno_t __cdecl _set_fmode  (               int       _Mode );

__declspec(dllimport) errno_t __cdecl _get_fmode  (              int*      _PMode);








typedef struct _div_t
{
    int quot;
    int rem;
} div_t;

typedef struct _ldiv_t
{
    long quot;
    long rem;
} ldiv_t;

typedef struct _lldiv_t
{
    long long quot;
    long long rem;
} lldiv_t;

  int       __cdecl abs   (  int       _Number);
  long      __cdecl labs  (  long      _Number);
  long long __cdecl llabs (  long long _Number);
  __int64   __cdecl _abs64(  __int64   _Number);

  unsigned short   __cdecl _byteswap_ushort(  unsigned short   _Number);
  unsigned long    __cdecl _byteswap_ulong (  unsigned long    _Number);
  unsigned __int64 __cdecl _byteswap_uint64(  unsigned __int64 _Number);

  __declspec(dllimport) div_t   __cdecl div  (  int       _Numerator,   int       _Denominator);
  __declspec(dllimport) ldiv_t  __cdecl ldiv (  long      _Numerator,   long      _Denominator);
  __declspec(dllimport) lldiv_t __cdecl lldiv(  long long _Numerator,   long long _Denominator);



#pragma warning (push)
#pragma warning (disable:6540)

unsigned int __cdecl _rotl(
      unsigned int _Value,
      int          _Shift
    );

 
unsigned long __cdecl _lrotl(
      unsigned long _Value,
      int           _Shift
    );

unsigned __int64 __cdecl _rotl64(
      unsigned __int64 _Value,
      int              _Shift
    );

unsigned int __cdecl _rotr(
      unsigned int _Value,
      int          _Shift
    );

 
unsigned long __cdecl _lrotr(
      unsigned long _Value,
      int           _Shift
    );

unsigned __int64 __cdecl _rotr64(
      unsigned __int64 _Value,
      int              _Shift
    );

#pragma warning (pop)






__declspec(dllimport) void __cdecl srand(  unsigned int _Seed);

  __declspec(dllimport) int __cdecl rand(void);



#line 352 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"




extern "C++"
{
    inline long abs(long const _X) throw()
    {
        return labs(_X);
    }

    inline long long abs(long long const _X) throw()
    {
        return llabs(_X);
    }

    inline ldiv_t div(long const _A1, long const _A2) throw()
    {
        return ldiv(_A1, _A2);
    }

    inline lldiv_t div(long long const _A1, long long const _A2) throw()
    {
        return lldiv(_A1, _A2);
    }
}
#line 379 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"










    #pragma pack(push, 4)
    typedef struct
    {
        unsigned char ld[10];
    } _LDOUBLE;
    #pragma pack(pop)

    











#line 409 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

typedef struct
{
    double x;
} _CRT_DOUBLE;

typedef struct
{
    float f;
} _CRT_FLOAT;





typedef struct
{
    long double x;
} _LONGDOUBLE;



#pragma pack(push, 4)
typedef struct
{
    unsigned char ld12[12];
} _LDBL12;
#pragma pack(pop)








                     __declspec(dllimport) double    __cdecl atof   (  char const* _String);
   __declspec(dllimport) int       __cdecl atoi   (  char const* _String);
                     __declspec(dllimport) long      __cdecl atol   (  char const* _String);
                     __declspec(dllimport) long long __cdecl atoll  (  char const* _String);
                     __declspec(dllimport) __int64   __cdecl _atoi64(  char const* _String);

  __declspec(dllimport) double    __cdecl _atof_l  (  char const* _String,   _locale_t _Locale);
  __declspec(dllimport) int       __cdecl _atoi_l  (  char const* _String,   _locale_t _Locale);
  __declspec(dllimport) long      __cdecl _atol_l  (  char const* _String,   _locale_t _Locale);
  __declspec(dllimport) long long __cdecl _atoll_l (  char const* _String,   _locale_t _Locale);
  __declspec(dllimport) __int64   __cdecl _atoi64_l(  char const* _String,   _locale_t _Locale);

  __declspec(dllimport) int __cdecl _atoflt (  _CRT_FLOAT*  _Result,   char const* _String);
  __declspec(dllimport) int __cdecl _atodbl (  _CRT_DOUBLE* _Result,   char*       _String);
  __declspec(dllimport) int __cdecl _atoldbl(  _LDOUBLE*    _Result,   char*       _String);

 
__declspec(dllimport) int __cdecl _atoflt_l(
         _CRT_FLOAT* _Result,
        char const* _String,
      _locale_t   _Locale
    );

 
__declspec(dllimport) int __cdecl _atodbl_l(
         _CRT_DOUBLE* _Result,
        char*        _String,
      _locale_t    _Locale
    );


 
__declspec(dllimport) int __cdecl _atoldbl_l(
         _LDOUBLE* _Result,
        char*     _String,
      _locale_t _Locale
    );

 
__declspec(dllimport) float __cdecl strtof(
                        char const* _String,
        char**      _EndPtr
    );

 
__declspec(dllimport) float __cdecl _strtof_l(
                        char const* _String,
        char**      _EndPtr,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) double __cdecl strtod(
                        char const* _String,
        char**      _EndPtr
    );

 
__declspec(dllimport) double __cdecl _strtod_l(
                        char const* _String,
        char**      _EndPtr,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) long double __cdecl strtold(
                        char const* _String,
        char**      _EndPtr
    );

 
__declspec(dllimport) long double __cdecl _strtold_l(
                        char const* _String,
        char**      _EndPtr,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) long __cdecl strtol(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix
    );

 
__declspec(dllimport) long __cdecl _strtol_l(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) long long __cdecl strtoll(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix
    );

 
__declspec(dllimport) long long __cdecl _strtoll_l(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) unsigned long __cdecl strtoul(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix
    );

 
__declspec(dllimport) unsigned long __cdecl _strtoul_l(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) unsigned long long __cdecl strtoull(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix
    );

 
__declspec(dllimport) unsigned long long __cdecl _strtoull_l(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) __int64 __cdecl _strtoi64(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix
    );

 
__declspec(dllimport) __int64 __cdecl _strtoi64_l(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix,
                      _locale_t   _Locale
    );

 
__declspec(dllimport) unsigned __int64 __cdecl _strtoui64(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix
    );

 
__declspec(dllimport) unsigned __int64 __cdecl _strtoui64_l(
                        char const* _String,
        char**      _EndPtr,
                          int         _Radix,
                      _locale_t   _Locale
    );








 

__declspec(dllimport) errno_t __cdecl _itoa_s(
                              int    _Value,
      char*  _Buffer,
                              size_t _BufferCount,
                              int    _Radix
    );

extern "C++" { template <size_t _Size> inline   errno_t __cdecl _itoa_s(  int _Value, char (&_Buffer)[_Size],   int _Radix) throw() { return _itoa_s(_Value, _Buffer, _Size, _Radix); } }
#line 635 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
 __declspec(dllimport) char* __cdecl _itoa( int _Value,   char *_Buffer,  int _Radix);
#line 645 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"
#pragma warning(pop)

 

__declspec(dllimport) errno_t __cdecl _ltoa_s(
                              long   _Value,
      char*  _Buffer,
                              size_t _BufferCount,
                              int    _Radix
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _ltoa_s(  long _Value, char (&_Buffer)[_Size],   int _Radix) throw() { return _ltoa_s(_Value, _Buffer, _Size, _Radix); } }
#line 662 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 __declspec(dllimport) char* __cdecl _ltoa( long _Value,   char *_Buffer,  int _Radix);
#line 669 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 

__declspec(dllimport) errno_t __cdecl _ultoa_s(
                              unsigned long _Value,
      char*         _Buffer,
                              size_t        _BufferCount,
                              int           _Radix
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _ultoa_s(  unsigned long _Value, char (&_Buffer)[_Size],   int _Radix) throw() { return _ultoa_s(_Value, _Buffer, _Size, _Radix); } }
#line 685 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

#pragma warning(push)
#pragma warning(disable: 28726) 
 __declspec(dllimport) char* __cdecl _ultoa( unsigned long _Value,   char *_Buffer,  int _Radix);
#line 694 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"
#pragma warning(pop)

 

__declspec(dllimport) errno_t __cdecl _i64toa_s(
                              __int64 _Value,
      char*   _Buffer,
                              size_t  _BufferCount,
                              int     _Radix
    );

 

__declspec(dllimport) char* __cdecl _i64toa(
                        __int64 _Value,
        char*   _Buffer,
                        int     _Radix
    );

 

__declspec(dllimport) errno_t __cdecl _ui64toa_s(
                              unsigned __int64 _Value,
      char*            _Buffer,
                              size_t           _BufferCount,
                              int              _Radix
    );


__declspec(dllimport) char* __cdecl _ui64toa(
                        unsigned __int64 _Value,
        char*            _Buffer,
                        int              _Radix
    );













 

__declspec(dllimport) errno_t __cdecl _ecvt_s(
      char* _Buffer,
       size_t                       _BufferCount,
       double                       _Value,
       int                          _DigitCount,
      int*                         _PtDec,
      int*                         _PtSign
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _ecvt_s(char (&_Buffer)[_Size],   double _Value,   int _DigitCount,   int* _PtDec,   int* _PtSign) throw() { return _ecvt_s(_Buffer, _Size, _Value, _DigitCount, _PtDec, _PtSign); } }
#line 760 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

  
__declspec(dllimport) char* __cdecl _ecvt(
       double _Value,
       int    _DigitCount,
      int*   _PtDec,
      int*   _PtSign
    );

 

__declspec(dllimport) errno_t __cdecl _fcvt_s(
      char*  _Buffer,
                              size_t _BufferCount,
                              double _Value,
                              int    _FractionalDigitCount,
                             int*   _PtDec,
                             int*   _PtSign
    );

extern "C++" { template <size_t _Size> inline   errno_t __cdecl _fcvt_s(char (&_Buffer)[_Size],   double _Value,   int _FractionalDigitCount,   int* _PtDec,   int* _PtSign) throw() { return _fcvt_s(_Buffer, _Size, _Value, _FractionalDigitCount, _PtDec, _PtSign); } }
#line 789 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 
  
__declspec(dllimport) char* __cdecl _fcvt(
       double _Value,
       int    _FractionalDigitCount,
      int*   _PtDec,
      int*   _PtSign
    );

 
__declspec(dllimport) errno_t __cdecl _gcvt_s(
      char*  _Buffer,
                              size_t _BufferCount,
                              double _Value,
                              int    _DigitCount
    );

extern "C++" { template <size_t _Size> inline   errno_t __cdecl _gcvt_s(char (&_Buffer)[_Size],   double _Value,   int _DigitCount) throw() { return _gcvt_s(_Buffer, _Size, _Value, _DigitCount); } }
#line 814 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"


__declspec(dllimport) char* __cdecl _gcvt(
                        double _Value,
                        int    _DigitCount,
        char*  _Buffer
    );











    

#line 835 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"
        
    #line 837 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

    


        
    #line 843 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

     
    __declspec(dllimport) int __cdecl ___mb_cur_max_func(void);

     
    __declspec(dllimport) int __cdecl ___mb_cur_max_l_func(_locale_t _Locale);
#line 850 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"



 
__declspec(dllimport) int __cdecl mblen(
        char const* _Ch,
                                             size_t      _MaxCount
    );

 
__declspec(dllimport) int __cdecl _mblen_l(
        char const* _Ch,
                                             size_t      _MaxCount,
                                         _locale_t   _Locale
    );

 
 
__declspec(dllimport) size_t __cdecl _mbstrlen(
      char const* _String
    );

 
 
__declspec(dllimport) size_t __cdecl _mbstrlen_l(
        char const* _String,
      _locale_t   _Locale
    );

 
 
__declspec(dllimport) size_t __cdecl _mbstrnlen(
      char const* _String,
        size_t      _MaxCount
    );

 
 
__declspec(dllimport) size_t __cdecl _mbstrnlen_l(
        char const* _String,
          size_t      _MaxCount,
      _locale_t   _Locale
    );

 
__declspec(dllimport) int __cdecl mbtowc(
                      wchar_t*    _DstCh,
      char const* _SrcCh,
                                      size_t      _SrcSizeInBytes
    );

 
__declspec(dllimport) int __cdecl _mbtowc_l(
                      wchar_t*    _DstCh,
      char const* _SrcCh,
                                      size_t      _SrcSizeInBytes,
                                  _locale_t   _Locale
    );


__declspec(dllimport) errno_t __cdecl mbstowcs_s(
                                                      size_t*     _PtNumOfCharConverted,
      wchar_t*    _DstBuf,
                                                           size_t      _SizeInWords,
                                     char const* _SrcBuf,
                                                           size_t      _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl mbstowcs_s(  size_t* _PtNumOfCharConverted,   wchar_t (&_Dest)[_Size],   char const* _Source,   size_t _MaxCount) throw() { return mbstowcs_s(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount); } }
#line 925 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 __declspec(dllimport) size_t __cdecl mbstowcs( wchar_t *_Dest,  char const* _Source,  size_t _MaxCount);
#line 932 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"


__declspec(dllimport) errno_t __cdecl _mbstowcs_s_l(
                                                      size_t*     _PtNumOfCharConverted,
      wchar_t*    _DstBuf,
                                                           size_t      _SizeInWords,
                                     char const* _SrcBuf,
                                                           size_t      _MaxCount,
                                                       _locale_t   _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbstowcs_s_l(  size_t* _PtNumOfCharConverted,   wchar_t (&_Dest)[_Size],   char const* _Source,   size_t _MaxCount,   _locale_t _Locale) throw() { return _mbstowcs_s_l(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount, _Locale); } }
#line 951 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 __declspec(dllimport) size_t __cdecl _mbstowcs_l(  wchar_t *_Dest,   char const* _Source,   size_t _MaxCount,   _locale_t _Locale);
#line 960 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"





__declspec(dllimport) int __cdecl wctomb(
      char*   _MbCh,
                                wchar_t _WCh
    );


__declspec(dllimport) int __cdecl _wctomb_l(
        char*     _MbCh,
                          wchar_t   _WCh,
                      _locale_t _Locale
    );



    
    __declspec(dllimport) errno_t __cdecl wctomb_s(
                                                         int*    _SizeConverted,
          char*   _MbCh,
                                                              rsize_t _SizeInBytes,
                                                              wchar_t _WCh
        );

#line 988 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"


__declspec(dllimport) errno_t __cdecl _wctomb_s_l(
                             int*     _SizeConverted,
      char*     _MbCh,
                                  size_t    _SizeInBytes,
                                  wchar_t   _WCh,
                              _locale_t _Locale);


__declspec(dllimport) errno_t __cdecl wcstombs_s(
                                                               size_t*        _PtNumOfCharConverted,
      char*          _Dst,
                                                                    size_t         _DstSizeInBytes,
                                                                  wchar_t const* _Src,
                                                                    size_t         _MaxCountInBytes
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcstombs_s(  size_t* _PtNumOfCharConverted,   char (&_Dest)[_Size],   wchar_t const* _Source,   size_t _MaxCount) throw() { return wcstombs_s(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount); } }
#line 1013 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 __declspec(dllimport) size_t __cdecl wcstombs( char *_Dest,  wchar_t const* _Source,  size_t _MaxCount);
#line 1020 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"


__declspec(dllimport) errno_t __cdecl _wcstombs_s_l(
                                                               size_t*        _PtNumOfCharConverted,
      char*          _Dst,
                                                                    size_t         _DstSizeInBytes,
                                                                  wchar_t const* _Src,
                                                                    size_t         _MaxCountInBytes,
                                                                _locale_t      _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcstombs_s_l(  size_t* _PtNumOfCharConverted,   char (&_Dest)[_Size],   wchar_t const* _Source,   size_t _MaxCount,   _locale_t _Locale) throw() { return _wcstombs_s_l(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount, _Locale); } }
#line 1039 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

 __declspec(dllimport) size_t __cdecl _wcstombs_l(  char *_Dest,   wchar_t const* _Source,   size_t _MaxCount,   _locale_t _Locale);
#line 1048 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"




















 
 
__declspec(dllimport) __declspec(allocator) char* __cdecl _fullpath(
      char*       _Buffer,
                                char const* _Path,
                                  size_t      _BufferCount
    );




__declspec(dllimport) errno_t __cdecl _makepath_s(
      char*       _Buffer,
                              size_t      _BufferCount,
                        char const* _Drive,
                        char const* _Dir,
                        char const* _Filename,
                        char const* _Ext
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _makepath_s(char (&_Buffer)[_Size],   char const* _Drive,   char const* _Dir,   char const* _Filename,   char const* _Ext) throw() { return _makepath_s(_Buffer, _Size, _Drive, _Dir, _Filename, _Ext); } }
#line 1096 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

#pragma warning(push)
#pragma warning(disable: 28719) 
#pragma warning(disable: 28726) 
 __declspec(dllimport) void __cdecl _makepath(  char *_Buffer,  char const* _Drive,  char const* _Dir,  char const* _Filename,  char const* _Ext);
#line 1108 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"
#pragma warning(pop)


__declspec(dllimport) void __cdecl _splitpath(
                        char const* _FullPath,
        char*       _Drive,
        char*       _Dir,
        char*       _Filename,
        char*       _Ext
    );


__declspec(dllimport) errno_t __cdecl _splitpath_s(
                                  char const* _FullPath,
         char*       _Drive,
                                    size_t      _DriveCount,
           char*       _Dir,
                                    size_t      _DirCount,
      char*       _Filename,
                                    size_t      _FilenameCount,
           char*       _Ext,
                                    size_t      _ExtCount
    );

extern "C++" { template <size_t _DriveSize, size_t _DirSize, size_t _NameSize, size_t _ExtSize> inline errno_t __cdecl _splitpath_s(   char const* _Dest,   char (&_Drive)[_DriveSize],   char (&_Dir)[_DirSize],   char (&_Name)[_NameSize],   char (&_Ext)[_ExtSize] ) throw() { return _splitpath_s(_Dest, _Drive, _DriveSize, _Dir, _DirSize, _Name, _NameSize, _Ext, _ExtSize); } }










    

    
     
    __declspec(dllimport) errno_t __cdecl getenv_s(
                                     size_t*     _RequiredCount,
          char*       _Buffer,
                                      rsize_t     _BufferCount,
                                    char const* _VarName
        );

    #line 1155 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"




    __declspec(dllimport) int*       __cdecl __p___argc (void);
    __declspec(dllimport) char***    __cdecl __p___argv (void);
    __declspec(dllimport) wchar_t*** __cdecl __p___wargv(void);

    




        
        
        
    #line 1172 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

    __declspec(dllimport) char***    __cdecl __p__environ (void);
    __declspec(dllimport) wchar_t*** __cdecl __p__wenviron(void);

    
        
    #line 1179 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

    





        
        
    #line 1189 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"



    
    


    

          
        __declspec(dllimport) char* __cdecl getenv(
              char const* _VarName
            );

        extern "C++" { template <size_t _Size> inline errno_t __cdecl getenv_s(  size_t* _RequiredCount, char (&_Buffer)[_Size],   char const* _VarName) throw() { return getenv_s(_RequiredCount, _Buffer, _Size, _VarName); } }
#line 1209 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

        


#line 1214 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

        
        __declspec(dllimport) errno_t __cdecl _dupenv_s(
                char**      _Buffer,
                                                                                size_t*     _BufferCount,
                                                                                   char const* _VarName
            );

        

#line 1225 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

        __declspec(dllimport) int __cdecl system(
              char const* _Command
            );

        
        
        #pragma warning (push)
        #pragma warning (disable:6540)

         
        __declspec(dllimport) int __cdecl _putenv(
              char const* _EnvString
            );

        
        __declspec(dllimport) errno_t __cdecl _putenv_s(
              char const* _Name,
              char const* _Value
            );

        #pragma warning (pop)

        __declspec(dllimport) errno_t __cdecl _searchenv_s(
                                    char const* _Filename,
                                    char const* _VarName,
              char*       _Buffer,
                                      size_t      _BufferCount
            );

        extern "C++" { template <size_t _Size> inline errno_t __cdecl _searchenv_s(  char const* _Filename,   char const* _VarName, char (&_Buffer)[_Size]) throw() { return _searchenv_s(_Filename, _VarName, _Buffer, _Size); } }
#line 1261 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

         __declspec(dllimport) void __cdecl _searchenv( char const* _Filename,  char const* _VarName,   char *_Buffer);
#line 1268 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

        
        __declspec(deprecated("This function or variable has been superceded by newer library " "or operating system functionality. Consider using " "SetErrorMode" " " "instead. See online help for details."))
        __declspec(dllimport) void __cdecl _seterrormode(
              int _Mode
            );

        __declspec(deprecated("This function or variable has been superceded by newer library " "or operating system functionality. Consider using " "Beep" " " "instead. See online help for details."))
        __declspec(dllimport) void __cdecl _beep(
              unsigned _Frequency,
              unsigned _Duration
            );

        __declspec(deprecated("This function or variable has been superceded by newer library " "or operating system functionality. Consider using " "Sleep" " " "instead. See online help for details."))
        __declspec(dllimport) void __cdecl _sleep(
              unsigned long _Duration
            );

    #line 1287 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

#line 1289 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"










    




    
    

    #pragma warning(push)
    #pragma warning(disable: 4141) 

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_ecvt" ". See online help for details.")) 
    __declspec(dllimport) char* __cdecl ecvt(
           double _Value,
           int    _DigitCount,
          int*   _PtDec,
          int*   _PtSign
        );

      __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fcvt" ". See online help for details.")) 
    __declspec(dllimport) char* __cdecl fcvt(
           double _Value,
           int    _FractionalDigitCount,
          int*   _PtDec,
          int*   _PtSign
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_gcvt" ". See online help for details.")) 
    __declspec(dllimport) char* __cdecl gcvt(
                            double _Value,
                            int    _DigitCount,
            char*  _DstBuf
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_itoa" ". See online help for details.")) 
    __declspec(dllimport) char* __cdecl itoa(
                            int   _Value,
            char* _Buffer,
                            int   _Radix
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_ltoa" ". See online help for details.")) 
    __declspec(dllimport) char* __cdecl ltoa(
                            long  _Value,
            char* _Buffer,
                            int   _Radix
        );


    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_swab" ". See online help for details."))
    __declspec(dllimport) void __cdecl swab(
          char* _Buf1,
          char* _Buf2,
                                     int   _SizeInBytes
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_ultoa" ". See online help for details.")) 
    __declspec(dllimport) char* __cdecl ultoa(
                            unsigned long _Value,
            char*         _Buffer,
                            int           _Radix
        );

    

        

          __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_putenv" ". See online help for details."))
        __declspec(dllimport) int __cdecl putenv(
              char const* _EnvString
            );

    #line 1372 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"

    #pragma warning(pop)

    _onexit_t __cdecl onexit(  _onexit_t _Func);

#line 1378 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\stdlib.h"



} __pragma(pack(pop))
#line 195 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"

#line 197 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"










#line 208 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"

enum
{
   STBRP__INIT_skyline = 1
};

static void stbrp_setup_heuristic(stbrp_context *context, int heuristic)
{
   switch (context->init_mode) {
      case STBRP__INIT_skyline:
         (void)( (!!(heuristic == STBRP_HEURISTIC_Skyline_BL_sortHeight || heuristic == STBRP_HEURISTIC_Skyline_BF_sortHeight)) || (_wassert(L"heuristic == STBRP_HEURISTIC_Skyline_BL_sortHeight || heuristic == STBRP_HEURISTIC_Skyline_BF_sortHeight", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(218)), 0) );
         context->heuristic = heuristic;
         break;
      default:
         (void)( (!!(0)) || (_wassert(L"0", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(222)), 0) );
   }
}

static void stbrp_setup_allow_out_of_mem(stbrp_context *context, int allow_out_of_mem)
{
   if (allow_out_of_mem)
      
      
      
      
      context->align = 1;
   else {
      
      
      
      
      
      

      context->align = (context->width + context->num_nodes-1) / context->num_nodes;
   }
}

static void stbrp_init_target(stbrp_context *context, int width, int height, stbrp_node *nodes, int num_nodes)
{
   int i;

   (void)( (!!(width <= 0xffff && height <= 0xffff)) || (_wassert(L"width <= 0xffff && height <= 0xffff", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(250)), 0) );
#line 252 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"

   for (i=0; i < num_nodes-1; ++i)
      nodes[i].next = &nodes[i+1];
   nodes[i].next = 0;
   context->init_mode = STBRP__INIT_skyline;
   context->heuristic = STBRP_HEURISTIC_Skyline_default;
   context->free_head = &nodes[0];
   context->active_head = &context->extra[0];
   context->width = width;
   context->height = height;
   context->num_nodes = num_nodes;
   stbrp_setup_allow_out_of_mem(context, 0);

   
   context->extra[0].x = 0;
   context->extra[0].y = 0;
   context->extra[0].next = &context->extra[1];
   context->extra[1].x = (stbrp_coord) width;



   context->extra[1].y = 65535;
#line 275 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"
   context->extra[1].next = 0;
}


static int stbrp__skyline_find_min_y(stbrp_context *c, stbrp_node *first, int x0, int width, int *pwaste)
{
   stbrp_node *node = first;
   int x1 = x0 + width;
   int min_y, visited_width, waste_area;

   (void)(c);

   (void)( (!!(first->x <= x0)) || (_wassert(L"first->x <= x0", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(287)), 0) );

   



#line 294 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"
   (void)( (!!(node->next->x > x0)) || (_wassert(L"node->next->x > x0", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(294)), 0) ); 
   #line 296 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"

   (void)( (!!(node->x <= x0)) || (_wassert(L"node->x <= x0", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(297)), 0) );

   min_y = 0;
   waste_area = 0;
   visited_width = 0;
   while (node->x < x1) {
      if (node->y > min_y) {
         
         
         
         waste_area += visited_width * (node->y - min_y);
         min_y = node->y;
         
         if (node->x < x0)
            visited_width += node->next->x - x0;
         else
            visited_width += node->next->x - node->x;
      } else {
         
         int under_width = node->next->x - node->x;
         if (under_width + visited_width > width)
            under_width = width - visited_width;
         waste_area += under_width * (min_y - node->y);
         visited_width += under_width;
      }
      node = node->next;
   }

   *pwaste = waste_area;
   return min_y;
}

typedef struct
{
   int x,y;
   stbrp_node **prev_link;
} stbrp__findresult;

static stbrp__findresult stbrp__skyline_find_best_pos(stbrp_context *c, int width, int height)
{
   int best_waste = (1<<30), best_x, best_y = (1 << 30);
   stbrp__findresult fr;
   stbrp_node **prev, *node, *tail, **best = 0;

   
   width = (width + c->align - 1);
   width -= width % c->align;
   (void)( (!!(width % c->align == 0)) || (_wassert(L"width % c->align == 0", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(344)), 0) );

   node = c->active_head;
   prev = &c->active_head;
   while (node->x + width <= c->width) {
      int y,waste;
      y = stbrp__skyline_find_min_y(c, node, node->x, width, &waste);
      if (c->heuristic == STBRP_HEURISTIC_Skyline_BL_sortHeight) { 
         
         if (y < best_y) {
            best_y = y;
            best = prev;
         }
      } else {
         
         if (y + height <= c->height) {
            
            if (y < best_y || (y == best_y && waste < best_waste)) {
               best_y = y;
               best_waste = waste;
               best = prev;
            }
         }
      }
      prev = &node->next;
      node = node->next;
   }

   best_x = (best == 0) ? 0 : (*best)->x;

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   

   if (c->heuristic == STBRP_HEURISTIC_Skyline_BF_sortHeight) {
      tail = c->active_head;
      node = c->active_head;
      prev = &c->active_head;
      
      while (tail->x < width)
         tail = tail->next;
      while (tail) {
         int xpos = tail->x - width;
         int y,waste;
         (void)( (!!(xpos >= 0)) || (_wassert(L"xpos >= 0", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(401)), 0) );
         
         while (node->next->x <= xpos) {
            prev = &node->next;
            node = node->next;
         }
         (void)( (!!(node->next->x > xpos && node->x <= xpos)) || (_wassert(L"node->next->x > xpos && node->x <= xpos", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(407)), 0) );
         y = stbrp__skyline_find_min_y(c, node, xpos, width, &waste);
         if (y + height < c->height) {
            if (y <= best_y) {
               if (y < best_y || waste < best_waste || (waste==best_waste && xpos < best_x)) {
                  best_x = xpos;
                  (void)( (!!(y <= best_y)) || (_wassert(L"y <= best_y", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(413)), 0) );
                  best_y = y;
                  best_waste = waste;
                  best = prev;
               }
            }
         }
         tail = tail->next;
      }         
   }

   fr.prev_link = best;
   fr.x = best_x;
   fr.y = best_y;
   return fr;
}

static stbrp__findresult stbrp__skyline_pack_rectangle(stbrp_context *context, int width, int height)
{
   
   stbrp__findresult res = stbrp__skyline_find_best_pos(context, width, height);
   stbrp_node *node, *cur;

   
   
   
   
   if (res.prev_link == 0 || res.y + height > context->height || context->free_head == 0) {
      res.prev_link = 0;
      return res;
   }

   
   node = context->free_head;
   node->x = (stbrp_coord) res.x;
   node->y = (stbrp_coord) (res.y + height);

   context->free_head = node->next;

   
   
   

   cur = *res.prev_link;
   if (cur->x < res.x) {
      
      stbrp_node *next = cur->next;
      cur->next = node;
      cur = next;
   } else {
      *res.prev_link = node;
   }

   
   
   while (cur->next && cur->next->x <= res.x + width) {
      stbrp_node *next = cur->next;
      
      cur->next = context->free_head;
      context->free_head = cur;
      cur = next;
   }

   
   node->next = cur;

   if (cur->x < res.x + width)
      cur->x = (stbrp_coord) (res.x + width);


   cur = context->active_head;
   while (cur->x < context->width) {
      (void)( (!!(cur->x < cur->next->x)) || (_wassert(L"cur->x < cur->next->x", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(485)), 0) );
      cur = cur->next;
   }
   (void)( (!!(cur->next == 0)) || (_wassert(L"cur->next == 0", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(488)), 0) );

   {
      stbrp_node *L1 = 0, *L2 = 0;
      int count=0;
      cur = context->active_head;
      while (cur) {
         L1 = cur;
         cur = cur->next;
         ++count;
      }
      cur = context->free_head;
      while (cur) {
         L2 = cur;
         cur = cur->next;
         ++count;
      }
      (void)( (!!(count == context->num_nodes+2)) || (_wassert(L"count == context->num_nodes+2", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(505)), 0) );
   }
#line 508 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"

   return res;
}

static int rect_height_compare(const void *a, const void *b)
{
   const stbrp_rect *p = (const stbrp_rect *) a;
   const stbrp_rect *q = (const stbrp_rect *) b;
   if (p->h > q->h)
      return -1;
   if (p->h < q->h)
      return  1;
   return (p->w > q->w) ? -1 : (p->w < q->w);
}

static int rect_width_compare(const void *a, const void *b)
{
   const stbrp_rect *p = (const stbrp_rect *) a;
   const stbrp_rect *q = (const stbrp_rect *) b;
   if (p->w > q->w)
      return -1;
   if (p->w < q->w)
      return  1;
   return (p->h > q->h) ? -1 : (p->h < q->h);
}

static int rect_original_order(const void *a, const void *b)
{
   const stbrp_rect *p = (const stbrp_rect *) a;
   const stbrp_rect *q = (const stbrp_rect *) b;
   return (p->was_packed < q->was_packed) ? -1 : (p->was_packed > q->was_packed);
}





#line 546 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"

static void stbrp_pack_rects(stbrp_context *context, stbrp_rect *rects, int num_rects)
{
   int i;

   
   for (i=0; i < num_rects; ++i) {
      rects[i].was_packed = i;
      
      (void)( (!!(rects[i].w <= 0xffff && rects[i].h <= 0xffff)) || (_wassert(L"rects[i].w <= 0xffff && rects[i].h <= 0xffff", L"c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h", (unsigned)(555)), 0) );
      #line 557 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"
   }

   
   qsort(rects, num_rects, sizeof(rects[0]), rect_height_compare);

   for (i=0; i < num_rects; ++i) {
      if (rects[i].w == 0 || rects[i].h == 0) {
         rects[i].x = rects[i].y = 0;  
      } else {
         stbrp__findresult fr = stbrp__skyline_pack_rectangle(context, rects[i].w, rects[i].h);
         if (fr.prev_link) {
            rects[i].x = (stbrp_coord) fr.x;
            rects[i].y = (stbrp_coord) fr.y;
         } else {
            rects[i].x = rects[i].y = 0xffff;
         }
      }
   }

   
   qsort(rects, num_rects, sizeof(rects[0]), rect_original_order);

   
   for (i=0; i < num_rects; ++i)
      rects[i].was_packed = !(rects[i].x == 0xffff && rects[i].y == 0xffff);
}
#line 584 "c:\\biblioteki\\imgui-sfml\\stb_rect_pack.h"
#line 88 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"









#line 98 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"
#line 1 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"
























































































































































































































































































#line 282 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"































#line 314 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"




























































#line 375 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"











   
   
   typedef unsigned char   stbtt_uint8;
   typedef signed   char   stbtt_int8;
   typedef unsigned short  stbtt_uint16;
   typedef signed   short  stbtt_int16;
   typedef unsigned int    stbtt_uint32;
   typedef signed   int    stbtt_int32;
   #line 395 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"

   typedef char stbtt__check_size32[sizeof(stbtt_int32)==4 ? 1 : -1];
   typedef char stbtt__check_size16[sizeof(stbtt_int16)==2 ? 1 : -1];

   
   
   #line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\math.h"















#line 402 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"
   
   
   #line 405 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"

   
   #line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\math.h"















#line 408 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"
   
   #line 410 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"

   
   #line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\math.h"















#line 413 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"
   
   #line 415 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"

   
   





   




   
   
   
   #line 432 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"

   
   #line 1 "c:\\program files (x86)\\windows kits\\10\\include\\10.0.16299.0\\ucrt\\memory.h"







#pragma once



#line 435 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"
   
   
   #line 438 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"
#line 439 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"















#line 455 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"


extern "C" {
#line 459 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"


typedef struct
{
   unsigned char *data;
   int cursor;
   int size;
} stbtt__buf;








typedef struct
{
   unsigned short x0,y0,x1,y1; 
   float xoff,yoff,xadvance;
} stbtt_bakedchar;

static int stbtt_BakeFontBitmap(const unsigned char *data, int offset,  
                                float pixel_height,                     
                                unsigned char *pixels, int pw, int ph,  
                                int first_char, int num_chars,          
                                stbtt_bakedchar *chardata);             





typedef struct
{
   float x0,y0,s0,t0; 
   float x1,y1,s1,t1; 
} stbtt_aligned_quad;

static void stbtt_GetBakedQuad(stbtt_bakedchar *chardata, int pw, int ph,  
                               int char_index,             
                               float *xpos, float *ypos,   
                               stbtt_aligned_quad *q,      
                               int opengl_fillrule);       



















typedef struct
{
   unsigned short x0,y0,x1,y1; 
   float xoff,yoff,xadvance;
   float xoff2,yoff2;
} stbtt_packedchar;

typedef struct stbtt_pack_context stbtt_pack_context;
typedef struct stbtt_fontinfo stbtt_fontinfo;




static int  stbtt_PackBegin(stbtt_pack_context *spc, unsigned char *pixels, int width, int height, int stride_in_bytes, int padding, void *alloc_context);










static void stbtt_PackEnd  (stbtt_pack_context *spc);




static int  stbtt_PackFontRange(stbtt_pack_context *spc, unsigned char *fontdata, int font_index, float font_size,
                                int first_unicode_char_in_range, int num_chars_in_range, stbtt_packedchar *chardata_for_range);













typedef struct
{
   float font_size;
   int first_unicode_codepoint_in_range;  
   int *array_of_unicode_codepoints;       
   int num_chars;
   stbtt_packedchar *chardata_for_range; 
   unsigned char h_oversample, v_oversample; 
} stbtt_pack_range;

static int  stbtt_PackFontRanges(stbtt_pack_context *spc, unsigned char *fontdata, int font_index, stbtt_pack_range *ranges, int num_ranges);





static void stbtt_PackSetOversampling(stbtt_pack_context *spc, unsigned int h_oversample, unsigned int v_oversample);















static void stbtt_GetPackedQuad(stbtt_packedchar *chardata, int pw, int ph,  
                               int char_index,             
                               float *xpos, float *ypos,   
                               stbtt_aligned_quad *q,      
                               int align_to_integer);

static int  stbtt_PackFontRangesGatherRects(stbtt_pack_context *spc, const stbtt_fontinfo *info, stbtt_pack_range *ranges, int num_ranges, stbrp_rect *rects);
static void stbtt_PackFontRangesPackRects(stbtt_pack_context *spc, stbrp_rect *rects, int num_rects);
static int  stbtt_PackFontRangesRenderIntoRects(stbtt_pack_context *spc, const stbtt_fontinfo *info, stbtt_pack_range *ranges, int num_ranges, stbrp_rect *rects);












struct stbtt_pack_context {
   void *user_allocator_context;
   void *pack_info;
   int   width;
   int   height;
   int   stride_in_bytes;
   int   padding;
   unsigned int   h_oversample, v_oversample;
   unsigned char *pixels;
   void  *nodes;
};







static int stbtt_GetNumberOfFonts(const unsigned char *data);






static int stbtt_GetFontOffsetForIndex(const unsigned char *data, int index);








struct stbtt_fontinfo
{
   void           * userdata;
   unsigned char  * data;              
   int              fontstart;         

   int numGlyphs;                     

   int loca,head,glyf,hhea,hmtx,kern; 
   int index_map;                     
   int indexToLocFormat;              

   stbtt__buf cff;                    
   stbtt__buf charstrings;            
   stbtt__buf gsubrs;                 
   stbtt__buf subrs;                  
   stbtt__buf fontdicts;              
   stbtt__buf fdselect;               
};

static int stbtt_InitFont(stbtt_fontinfo *info, const unsigned char *data, int offset);











static int stbtt_FindGlyphIndex(const stbtt_fontinfo *info, int unicode_codepoint);











static float stbtt_ScaleForPixelHeight(const stbtt_fontinfo *info, float pixels);







static float stbtt_ScaleForMappingEmToPixels(const stbtt_fontinfo *info, float pixels);




static void stbtt_GetFontVMetrics(const stbtt_fontinfo *info, int *ascent, int *descent, int *lineGap);







static void stbtt_GetFontBoundingBox(const stbtt_fontinfo *info, int *x0, int *y0, int *x1, int *y1);


static void stbtt_GetCodepointHMetrics(const stbtt_fontinfo *info, int codepoint, int *advanceWidth, int *leftSideBearing);




static int  stbtt_GetCodepointKernAdvance(const stbtt_fontinfo *info, int ch1, int ch2);


static int stbtt_GetCodepointBox(const stbtt_fontinfo *info, int codepoint, int *x0, int *y0, int *x1, int *y1);


static void stbtt_GetGlyphHMetrics(const stbtt_fontinfo *info, int glyph_index, int *advanceWidth, int *leftSideBearing);
static int  stbtt_GetGlyphKernAdvance(const stbtt_fontinfo *info, int glyph1, int glyph2);
static int  stbtt_GetGlyphBox(const stbtt_fontinfo *info, int glyph_index, int *x0, int *y0, int *x1, int *y1);










   enum {
      STBTT_vmove=1,
      STBTT_vline,
      STBTT_vcurve,
      STBTT_vcubic
   };
#line 751 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"


                   
   
   typedef struct
   {
      short x,y,cx,cy,cx1,cy1;
      unsigned char type,padding;
   } stbtt_vertex;
#line 761 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"

static int stbtt_IsGlyphEmpty(const stbtt_fontinfo *info, int glyph_index);


static int stbtt_GetCodepointShape(const stbtt_fontinfo *info, int unicode_codepoint, stbtt_vertex **vertices);
static int stbtt_GetGlyphShape(const stbtt_fontinfo *info, int glyph_index, stbtt_vertex **vertices);










static void stbtt_FreeShape(const stbtt_fontinfo *info, stbtt_vertex *vertices);







static void stbtt_FreeBitmap(unsigned char *bitmap, void *userdata);


static unsigned char *stbtt_GetCodepointBitmap(const stbtt_fontinfo *info, float scale_x, float scale_y, int codepoint, int *width, int *height, int *xoff, int *yoff);








static unsigned char *stbtt_GetCodepointBitmapSubpixel(const stbtt_fontinfo *info, float scale_x, float scale_y, float shift_x, float shift_y, int codepoint, int *width, int *height, int *xoff, int *yoff);



static void stbtt_MakeCodepointBitmap(const stbtt_fontinfo *info, unsigned char *output, int out_w, int out_h, int out_stride, float scale_x, float scale_y, int codepoint);





static void stbtt_MakeCodepointBitmapSubpixel(const stbtt_fontinfo *info, unsigned char *output, int out_w, int out_h, int out_stride, float scale_x, float scale_y, float shift_x, float shift_y, int codepoint);



static void stbtt_GetCodepointBitmapBox(const stbtt_fontinfo *font, int codepoint, float scale_x, float scale_y, int *ix0, int *iy0, int *ix1, int *iy1);






static void stbtt_GetCodepointBitmapBoxSubpixel(const stbtt_fontinfo *font, int codepoint, float scale_x, float scale_y, float shift_x, float shift_y, int *ix0, int *iy0, int *ix1, int *iy1);





static unsigned char *stbtt_GetGlyphBitmap(const stbtt_fontinfo *info, float scale_x, float scale_y, int glyph, int *width, int *height, int *xoff, int *yoff);
static unsigned char *stbtt_GetGlyphBitmapSubpixel(const stbtt_fontinfo *info, float scale_x, float scale_y, float shift_x, float shift_y, int glyph, int *width, int *height, int *xoff, int *yoff);
static void stbtt_MakeGlyphBitmap(const stbtt_fontinfo *info, unsigned char *output, int out_w, int out_h, int out_stride, float scale_x, float scale_y, int glyph);
static void stbtt_MakeGlyphBitmapSubpixel(const stbtt_fontinfo *info, unsigned char *output, int out_w, int out_h, int out_stride, float scale_x, float scale_y, float shift_x, float shift_y, int glyph);
static void stbtt_GetGlyphBitmapBox(const stbtt_fontinfo *font, int glyph, float scale_x, float scale_y, int *ix0, int *iy0, int *ix1, int *iy1);
static void stbtt_GetGlyphBitmapBoxSubpixel(const stbtt_fontinfo *font, int glyph, float scale_x, float scale_y,float shift_x, float shift_y, int *ix0, int *iy0, int *ix1, int *iy1);



typedef struct
{
   int w,h,stride;
   unsigned char *pixels;
} stbtt__bitmap;


static void stbtt_Rasterize(stbtt__bitmap *result,        
                               float flatness_in_pixels,     
                               stbtt_vertex *vertices,       
                               int num_verts,                
                               float scale_x, float scale_y, 
                               float shift_x, float shift_y, 
                               int x_off, int y_off,         
                               int invert,                   
                               void *userdata);              























static int stbtt_FindMatchingFont(const unsigned char *fontdata, const char *name, int flags);










static int stbtt_CompareUTF8toUTF16_bigendian(const char *s1, int len1, const char *s2, int len2);



static const char *stbtt_GetFontNameString(const stbtt_fontinfo *font, int *length, int platformID, int encodingID, int languageID, int nameID);







enum { 
   STBTT_PLATFORM_ID_UNICODE   =0,
   STBTT_PLATFORM_ID_MAC       =1,
   STBTT_PLATFORM_ID_ISO       =2,
   STBTT_PLATFORM_ID_MICROSOFT =3
};

enum { 
   STBTT_UNICODE_EID_UNICODE_1_0    =0,
   STBTT_UNICODE_EID_UNICODE_1_1    =1,
   STBTT_UNICODE_EID_ISO_10646      =2,
   STBTT_UNICODE_EID_UNICODE_2_0_BMP=3,
   STBTT_UNICODE_EID_UNICODE_2_0_FULL=4
};

enum { 
   STBTT_MS_EID_SYMBOL        =0,
   STBTT_MS_EID_UNICODE_BMP   =1,
   STBTT_MS_EID_SHIFTJIS      =2,
   STBTT_MS_EID_UNICODE_FULL  =10
};

enum { 
   STBTT_MAC_EID_ROMAN        =0,   STBTT_MAC_EID_ARABIC       =4,
   STBTT_MAC_EID_JAPANESE     =1,   STBTT_MAC_EID_HEBREW       =5,
   STBTT_MAC_EID_CHINESE_TRAD =2,   STBTT_MAC_EID_GREEK        =6,
   STBTT_MAC_EID_KOREAN       =3,   STBTT_MAC_EID_RUSSIAN      =7
};

enum { 
       
   STBTT_MS_LANG_ENGLISH     =0x0409,   STBTT_MS_LANG_ITALIAN     =0x0410,
   STBTT_MS_LANG_CHINESE     =0x0804,   STBTT_MS_LANG_JAPANESE    =0x0411,
   STBTT_MS_LANG_DUTCH       =0x0413,   STBTT_MS_LANG_KOREAN      =0x0412,
   STBTT_MS_LANG_FRENCH      =0x040c,   STBTT_MS_LANG_RUSSIAN     =0x0419,
   STBTT_MS_LANG_GERMAN      =0x0407,   STBTT_MS_LANG_SPANISH     =0x0409,
   STBTT_MS_LANG_HEBREW      =0x040d,   STBTT_MS_LANG_SWEDISH     =0x041D
};

enum { 
   STBTT_MAC_LANG_ENGLISH      =0 ,   STBTT_MAC_LANG_JAPANESE     =11,
   STBTT_MAC_LANG_ARABIC       =12,   STBTT_MAC_LANG_KOREAN       =23,
   STBTT_MAC_LANG_DUTCH        =4 ,   STBTT_MAC_LANG_RUSSIAN      =32,
   STBTT_MAC_LANG_FRENCH       =1 ,   STBTT_MAC_LANG_SPANISH      =6 ,
   STBTT_MAC_LANG_GERMAN       =2 ,   STBTT_MAC_LANG_SWEDISH      =5 ,
   STBTT_MAC_LANG_HEBREW       =10,   STBTT_MAC_LANG_CHINESE_SIMPLIFIED =33,
   STBTT_MAC_LANG_ITALIAN      =3 ,   STBTT_MAC_LANG_CHINESE_TRAD =19
};


}
#line 947 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"

#line 949 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"












#line 962 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"



#line 966 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"

typedef int stbtt__test_oversample_pow2[(8 & (8-1)) == 0 ? 1 : -1];



#line 972 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"





#line 978 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"






static stbtt_uint8 stbtt__buf_get8(stbtt__buf *b)
{
   if (b->cursor >= b->size)
      return 0;
   return b->data[b->cursor++];
}

static stbtt_uint8 stbtt__buf_peek8(stbtt__buf *b)
{
   if (b->cursor >= b->size)
      return 0;
   return b->data[b->cursor];
}

static void stbtt__buf_seek(stbtt__buf *b, int o)
{
   (void)( (!!(!(o > b->size || o < 0))) || (_wassert(L"!(o > b->size || o < 0)", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1000)), 0) );
   b->cursor = (o > b->size || o < 0) ? b->size : o;
}

static void stbtt__buf_skip(stbtt__buf *b, int o)
{
   stbtt__buf_seek(b, b->cursor + o);
}

static stbtt_uint32 stbtt__buf_get(stbtt__buf *b, int n)
{
   stbtt_uint32 v = 0;
   int i;
   (void)( (!!(n >= 1 && n <= 4)) || (_wassert(L"n >= 1 && n <= 4", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1013)), 0) );
   for (i = 0; i < n; i++)
      v = (v << 8) | stbtt__buf_get8(b);
   return v;
}

static stbtt__buf stbtt__new_buf(const void *p, size_t size)
{
   stbtt__buf r;
   (void)( (!!(size < 0x40000000)) || (_wassert(L"size < 0x40000000", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1022)), 0) );
   r.data = (stbtt_uint8*) p;
   r.size = (int) size;
   r.cursor = 0;
   return r;
}




static stbtt__buf stbtt__buf_range(const stbtt__buf *b, int o, int s)
{
   stbtt__buf r = stbtt__new_buf(0, 0);
   if (o < 0 || s < 0 || o > b->size || s > b->size - o) return r;
   r.data = b->data + o;
   r.size = s;
   return r;
}

static stbtt__buf stbtt__cff_get_index(stbtt__buf *b)
{
   int count, start, offsize;
   start = b->cursor;
   count = stbtt__buf_get((b), 2);
   if (count) {
      offsize = stbtt__buf_get8(b);
      (void)( (!!(offsize >= 1 && offsize <= 4)) || (_wassert(L"offsize >= 1 && offsize <= 4", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1048)), 0) );
      stbtt__buf_skip(b, offsize * count);
      stbtt__buf_skip(b, stbtt__buf_get(b, offsize) - 1);
   }
   return stbtt__buf_range(b, start, b->cursor - start);
}

static stbtt_uint32 stbtt__cff_int(stbtt__buf *b)
{
   int b0 = stbtt__buf_get8(b);
   if (b0 >= 32 && b0 <= 246)       return b0 - 139;
   else if (b0 >= 247 && b0 <= 250) return (b0 - 247)*256 + stbtt__buf_get8(b) + 108;
   else if (b0 >= 251 && b0 <= 254) return -(b0 - 251)*256 - stbtt__buf_get8(b) - 108;
   else if (b0 == 28)               return stbtt__buf_get((b), 2);
   else if (b0 == 29)               return stbtt__buf_get((b), 4);
   (void)( (!!(0)) || (_wassert(L"0", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1063)), 0) );
   return 0;
}

static void stbtt__cff_skip_operand(stbtt__buf *b) {
   int v, b0 = stbtt__buf_peek8(b);
   (void)( (!!(b0 >= 28)) || (_wassert(L"b0 >= 28", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1069)), 0) );
   if (b0 == 30) {
      stbtt__buf_skip(b, 1);
      while (b->cursor < b->size) {
         v = stbtt__buf_get8(b);
         if ((v & 0xF) == 0xF || (v >> 4) == 0xF)
            break;
      }
   } else {
      stbtt__cff_int(b);
   }
}

static stbtt__buf stbtt__dict_get(stbtt__buf *b, int key)
{
   stbtt__buf_seek(b, 0);
   while (b->cursor < b->size) {
      int start = b->cursor, end, op;
      while (stbtt__buf_peek8(b) >= 28)
         stbtt__cff_skip_operand(b);
      end = b->cursor;
      op = stbtt__buf_get8(b);
      if (op == 12)  op = stbtt__buf_get8(b) | 0x100;
      if (op == key) return stbtt__buf_range(b, start, end-start);
   }
   return stbtt__buf_range(b, 0, 0);
}

static void stbtt__dict_get_ints(stbtt__buf *b, int key, int outcount, stbtt_uint32 *out)
{
   int i;
   stbtt__buf operands = stbtt__dict_get(b, key);
   for (i = 0; i < outcount && operands.cursor < operands.size; i++)
      out[i] = stbtt__cff_int(&operands);
}

static int stbtt__cff_index_count(stbtt__buf *b)
{
   stbtt__buf_seek(b, 0);
   return stbtt__buf_get((b), 2);
}

static stbtt__buf stbtt__cff_index_get(stbtt__buf b, int i)
{
   int count, offsize, start, end;
   stbtt__buf_seek(&b, 0);
   count = stbtt__buf_get((&b), 2);
   offsize = stbtt__buf_get8(&b);
   (void)( (!!(i >= 0 && i < count)) || (_wassert(L"i >= 0 && i < count", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1117)), 0) );
   (void)( (!!(offsize >= 1 && offsize <= 4)) || (_wassert(L"offsize >= 1 && offsize <= 4", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1118)), 0) );
   stbtt__buf_skip(&b, i*offsize);
   start = stbtt__buf_get(&b, offsize);
   end = stbtt__buf_get(&b, offsize);
   return stbtt__buf_range(&b, 2+(count+1)*offsize+start, end - start);
}













static stbtt_uint16 ttUSHORT(stbtt_uint8 *p) { return p[0]*256 + p[1]; }
static stbtt_int16 ttSHORT(stbtt_uint8 *p)   { return p[0]*256 + p[1]; }
static stbtt_uint32 ttULONG(stbtt_uint8 *p)  { return (p[0]<<24) + (p[1]<<16) + (p[2]<<8) + p[3]; }
static stbtt_int32 ttLONG(stbtt_uint8 *p)    { return (p[0]<<24) + (p[1]<<16) + (p[2]<<8) + p[3]; }




static int stbtt__isfont(stbtt_uint8 *font)
{
   
   if (((font)[0] == ('1') && (font)[1] == (0) && (font)[2] == (0) && (font)[3] == (0)))  return 1; 
   if (((font)[0] == ("typ1"[0]) && (font)[1] == ("typ1"[1]) && (font)[2] == ("typ1"[2]) && (font)[3] == ("typ1"[3])))   return 1; 
   if (((font)[0] == ("OTTO"[0]) && (font)[1] == ("OTTO"[1]) && (font)[2] == ("OTTO"[2]) && (font)[3] == ("OTTO"[3])))   return 1; 
   if (((font)[0] == (0) && (font)[1] == (1) && (font)[2] == (0) && (font)[3] == (0))) return 1; 
   if (((font)[0] == ("true"[0]) && (font)[1] == ("true"[1]) && (font)[2] == ("true"[2]) && (font)[3] == ("true"[3])))   return 1; 
   return 0;
}


static stbtt_uint32 stbtt__find_table(stbtt_uint8 *data, stbtt_uint32 fontstart, const char *tag)
{
   stbtt_int32 num_tables = ttUSHORT(data+fontstart+4);
   stbtt_uint32 tabledir = fontstart + 12;
   stbtt_int32 i;
   for (i=0; i < num_tables; ++i) {
      stbtt_uint32 loc = tabledir + 16*i;
      if (((data+loc+0)[0] == (tag[0]) && (data+loc+0)[1] == (tag[1]) && (data+loc+0)[2] == (tag[2]) && (data+loc+0)[3] == (tag[3])))
         return ttULONG(data+loc+8);
   }
   return 0;
}

static int stbtt_GetFontOffsetForIndex_internal(unsigned char *font_collection, int index)
{
   
   if (stbtt__isfont(font_collection))
      return index == 0 ? 0 : -1;

   
   if (((font_collection)[0] == ("ttcf"[0]) && (font_collection)[1] == ("ttcf"[1]) && (font_collection)[2] == ("ttcf"[2]) && (font_collection)[3] == ("ttcf"[3]))) {
      
      if (ttULONG(font_collection+4) == 0x00010000 || ttULONG(font_collection+4) == 0x00020000) {
         stbtt_int32 n = ttLONG(font_collection+8);
         if (index >= n)
            return -1;
         return ttULONG(font_collection+12+index*4);
      }
   }
   return -1;
}

static int stbtt_GetNumberOfFonts_internal(unsigned char *font_collection)
{
   
   if (stbtt__isfont(font_collection))
      return 1;

   
   if (((font_collection)[0] == ("ttcf"[0]) && (font_collection)[1] == ("ttcf"[1]) && (font_collection)[2] == ("ttcf"[2]) && (font_collection)[3] == ("ttcf"[3]))) {
      
      if (ttULONG(font_collection+4) == 0x00010000 || ttULONG(font_collection+4) == 0x00020000) {
         return ttLONG(font_collection+8);
      }
   }
   return 0;
}

static stbtt__buf stbtt__get_subrs(stbtt__buf cff, stbtt__buf fontdict)
{
   stbtt_uint32 subrsoff = 0, private_loc[2] = { 0, 0 };
   stbtt__buf pdict;
   stbtt__dict_get_ints(&fontdict, 18, 2, private_loc);
   if (!private_loc[1] || !private_loc[0]) return stbtt__new_buf(0, 0);
   pdict = stbtt__buf_range(&cff, private_loc[1], private_loc[0]);
   stbtt__dict_get_ints(&pdict, 19, 1, &subrsoff);
   if (!subrsoff) return stbtt__new_buf(0, 0);
   stbtt__buf_seek(&cff, private_loc[1]+subrsoff);
   return stbtt__cff_get_index(&cff);
}

static int stbtt_InitFont_internal(stbtt_fontinfo *info, unsigned char *data, int fontstart)
{
   stbtt_uint32 cmap, t;
   stbtt_int32 i,numTables;

   info->data = data;
   info->fontstart = fontstart;
   info->cff = stbtt__new_buf(0, 0);

   cmap = stbtt__find_table(data, fontstart, "cmap");       
   info->loca = stbtt__find_table(data, fontstart, "loca"); 
   info->head = stbtt__find_table(data, fontstart, "head"); 
   info->glyf = stbtt__find_table(data, fontstart, "glyf"); 
   info->hhea = stbtt__find_table(data, fontstart, "hhea"); 
   info->hmtx = stbtt__find_table(data, fontstart, "hmtx"); 
   info->kern = stbtt__find_table(data, fontstart, "kern"); 

   if (!cmap || !info->head || !info->hhea || !info->hmtx)
      return 0;
   if (info->glyf) {
      
      if (!info->loca) return 0;
   } else {
      
      stbtt__buf b, topdict, topdictidx;
      stbtt_uint32 cstype = 2, charstrings = 0, fdarrayoff = 0, fdselectoff = 0;
      stbtt_uint32 cff;

      cff = stbtt__find_table(data, fontstart, "CFF ");
      if (!cff) return 0;

      info->fontdicts = stbtt__new_buf(0, 0);
      info->fdselect = stbtt__new_buf(0, 0);

      
      info->cff = stbtt__new_buf(data+cff, 512*1024*1024);
      b = info->cff;

      
      stbtt__buf_skip(&b, 2);
      stbtt__buf_seek(&b, stbtt__buf_get8(&b)); 

      
      
      stbtt__cff_get_index(&b);  
      topdictidx = stbtt__cff_get_index(&b);
      topdict = stbtt__cff_index_get(topdictidx, 0);
      stbtt__cff_get_index(&b);  
      info->gsubrs = stbtt__cff_get_index(&b);

      stbtt__dict_get_ints(&topdict, 17, 1, &charstrings);
      stbtt__dict_get_ints(&topdict, 0x100 | 6, 1, &cstype);
      stbtt__dict_get_ints(&topdict, 0x100 | 36, 1, &fdarrayoff);
      stbtt__dict_get_ints(&topdict, 0x100 | 37, 1, &fdselectoff);
      info->subrs = stbtt__get_subrs(b, topdict);

      
      if (cstype != 2) return 0;
      if (charstrings == 0) return 0;

      if (fdarrayoff) {
         
         if (!fdselectoff) return 0;
         stbtt__buf_seek(&b, fdarrayoff);
         info->fontdicts = stbtt__cff_get_index(&b);
         info->fdselect = stbtt__buf_range(&b, fdselectoff, b.size-fdselectoff);
      }

      stbtt__buf_seek(&b, charstrings);
      info->charstrings = stbtt__cff_get_index(&b);
   }

   t = stbtt__find_table(data, fontstart, "maxp");
   if (t)
      info->numGlyphs = ttUSHORT(data+t+4);
   else
      info->numGlyphs = 0xffff;

   
   
   
   numTables = ttUSHORT(data + cmap + 2);
   info->index_map = 0;
   for (i=0; i < numTables; ++i) {
      stbtt_uint32 encoding_record = cmap + 4 + 8 * i;
      
      switch(ttUSHORT(data+encoding_record)) {
         case STBTT_PLATFORM_ID_MICROSOFT:
            switch (ttUSHORT(data+encoding_record+2)) {
               case STBTT_MS_EID_UNICODE_BMP:
               case STBTT_MS_EID_UNICODE_FULL:
                  
                  info->index_map = cmap + ttULONG(data+encoding_record+4);
                  break;
            }
            break;
        case STBTT_PLATFORM_ID_UNICODE:
            
            
            info->index_map = cmap + ttULONG(data+encoding_record+4);
            break;
      }
   }
   if (info->index_map == 0)
      return 0;

   info->indexToLocFormat = ttUSHORT(data+info->head + 50);
   return 1;
}

static int stbtt_FindGlyphIndex(const stbtt_fontinfo *info, int unicode_codepoint)
{
   stbtt_uint8 *data = info->data;
   stbtt_uint32 index_map = info->index_map;

   stbtt_uint16 format = ttUSHORT(data + index_map + 0);
   if (format == 0) { 
      stbtt_int32 bytes = ttUSHORT(data + index_map + 2);
      if (unicode_codepoint < bytes-6)
         return (* (stbtt_uint8 *) (data + index_map + 6 + unicode_codepoint));
      return 0;
   } else if (format == 6) {
      stbtt_uint32 first = ttUSHORT(data + index_map + 6);
      stbtt_uint32 count = ttUSHORT(data + index_map + 8);
      if ((stbtt_uint32) unicode_codepoint >= first && (stbtt_uint32) unicode_codepoint < first+count)
         return ttUSHORT(data + index_map + 10 + (unicode_codepoint - first)*2);
      return 0;
   } else if (format == 2) {
      (void)( (!!(0)) || (_wassert(L"0", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1346)), 0) ); 
      return 0;
   } else if (format == 4) { 
      stbtt_uint16 segcount = ttUSHORT(data+index_map+6) >> 1;
      stbtt_uint16 searchRange = ttUSHORT(data+index_map+8) >> 1;
      stbtt_uint16 entrySelector = ttUSHORT(data+index_map+10);
      stbtt_uint16 rangeShift = ttUSHORT(data+index_map+12) >> 1;

      
      stbtt_uint32 endCount = index_map + 14;
      stbtt_uint32 search = endCount;

      if (unicode_codepoint > 0xffff)
         return 0;

      
      
      if (unicode_codepoint >= ttUSHORT(data + search + rangeShift*2))
         search += rangeShift*2;

      
      search -= 2;
      while (entrySelector) {
         stbtt_uint16 end;
         searchRange >>= 1;
         end = ttUSHORT(data + search + searchRange*2);
         if (unicode_codepoint > end)
            search += searchRange*2;
         --entrySelector;
      }
      search += 2;

      {
         stbtt_uint16 offset, start;
         stbtt_uint16 item = (stbtt_uint16) ((search - endCount) >> 1);

         (void)( (!!(unicode_codepoint <= ttUSHORT(data + endCount + 2*item))) || (_wassert(L"unicode_codepoint <= ttUSHORT(data + endCount + 2*item)", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1382)), 0) );
         start = ttUSHORT(data + index_map + 14 + segcount*2 + 2 + 2*item);
         if (unicode_codepoint < start)
            return 0;

         offset = ttUSHORT(data + index_map + 14 + segcount*6 + 2 + 2*item);
         if (offset == 0)
            return (stbtt_uint16) (unicode_codepoint + ttSHORT(data + index_map + 14 + segcount*4 + 2 + 2*item));

         return ttUSHORT(data + offset + (unicode_codepoint-start)*2 + index_map + 14 + segcount*6 + 2 + 2*item);
      }
   } else if (format == 12 || format == 13) {
      stbtt_uint32 ngroups = ttULONG(data+index_map+12);
      stbtt_int32 low,high;
      low = 0; high = (stbtt_int32)ngroups;
      
      while (low < high) {
         stbtt_int32 mid = low + ((high-low) >> 1); 
         stbtt_uint32 start_char = ttULONG(data+index_map+16+mid*12);
         stbtt_uint32 end_char = ttULONG(data+index_map+16+mid*12+4);
         if ((stbtt_uint32) unicode_codepoint < start_char)
            high = mid;
         else if ((stbtt_uint32) unicode_codepoint > end_char)
            low = mid+1;
         else {
            stbtt_uint32 start_glyph = ttULONG(data+index_map+16+mid*12+8);
            if (format == 12)
               return start_glyph + unicode_codepoint-start_char;
            else 
               return start_glyph;
         }
      }
      return 0; 
   }
   
   (void)( (!!(0)) || (_wassert(L"0", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1417)), 0) );
   return 0;
}

static int stbtt_GetCodepointShape(const stbtt_fontinfo *info, int unicode_codepoint, stbtt_vertex **vertices)
{
   return stbtt_GetGlyphShape(info, stbtt_FindGlyphIndex(info, unicode_codepoint), vertices);
}

static void stbtt_setvertex(stbtt_vertex *v, stbtt_uint8 type, stbtt_int32 x, stbtt_int32 y, stbtt_int32 cx, stbtt_int32 cy)
{
   v->type = type;
   v->x = (stbtt_int16) x;
   v->y = (stbtt_int16) y;
   v->cx = (stbtt_int16) cx;
   v->cy = (stbtt_int16) cy;
}

static int stbtt__GetGlyfOffset(const stbtt_fontinfo *info, int glyph_index)
{
   int g1,g2;

   (void)( (!!(!info->cff.size)) || (_wassert(L"!info->cff.size", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1439)), 0) );

   if (glyph_index >= info->numGlyphs) return -1; 
   if (info->indexToLocFormat >= 2)    return -1; 

   if (info->indexToLocFormat == 0) {
      g1 = info->glyf + ttUSHORT(info->data + info->loca + glyph_index * 2) * 2;
      g2 = info->glyf + ttUSHORT(info->data + info->loca + glyph_index * 2 + 2) * 2;
   } else {
      g1 = info->glyf + ttULONG (info->data + info->loca + glyph_index * 4);
      g2 = info->glyf + ttULONG (info->data + info->loca + glyph_index * 4 + 4);
   }

   return g1==g2 ? -1 : g1; 
}

static int stbtt__GetGlyphInfoT2(const stbtt_fontinfo *info, int glyph_index, int *x0, int *y0, int *x1, int *y1);

static int stbtt_GetGlyphBox(const stbtt_fontinfo *info, int glyph_index, int *x0, int *y0, int *x1, int *y1)
{
   if (info->cff.size) {
      stbtt__GetGlyphInfoT2(info, glyph_index, x0, y0, x1, y1);
   } else {
      int g = stbtt__GetGlyfOffset(info, glyph_index);
      if (g < 0) return 0;

      if (x0) *x0 = ttSHORT(info->data + g + 2);
      if (y0) *y0 = ttSHORT(info->data + g + 4);
      if (x1) *x1 = ttSHORT(info->data + g + 6);
      if (y1) *y1 = ttSHORT(info->data + g + 8);
   }
   return 1;
}

static int stbtt_GetCodepointBox(const stbtt_fontinfo *info, int codepoint, int *x0, int *y0, int *x1, int *y1)
{
   return stbtt_GetGlyphBox(info, stbtt_FindGlyphIndex(info,codepoint), x0,y0,x1,y1);
}

static int stbtt_IsGlyphEmpty(const stbtt_fontinfo *info, int glyph_index)
{
   stbtt_int16 numberOfContours;
   int g;
   if (info->cff.size)
      return stbtt__GetGlyphInfoT2(info, glyph_index, 0, 0, 0, 0) == 0;
   g = stbtt__GetGlyfOffset(info, glyph_index);
   if (g < 0) return 1;
   numberOfContours = ttSHORT(info->data + g);
   return numberOfContours == 0;
}

static int stbtt__close_shape(stbtt_vertex *vertices, int num_vertices, int was_off, int start_off,
    stbtt_int32 sx, stbtt_int32 sy, stbtt_int32 scx, stbtt_int32 scy, stbtt_int32 cx, stbtt_int32 cy)
{
   if (start_off) {
      if (was_off)
         stbtt_setvertex(&vertices[num_vertices++], STBTT_vcurve, (cx+scx)>>1, (cy+scy)>>1, cx,cy);
      stbtt_setvertex(&vertices[num_vertices++], STBTT_vcurve, sx,sy,scx,scy);
   } else {
      if (was_off)
         stbtt_setvertex(&vertices[num_vertices++], STBTT_vcurve,sx,sy,cx,cy);
      else
         stbtt_setvertex(&vertices[num_vertices++], STBTT_vline,sx,sy,0,0);
   }
   return num_vertices;
}

static int stbtt__GetGlyphShapeTT(const stbtt_fontinfo *info, int glyph_index, stbtt_vertex **pvertices)
{
   stbtt_int16 numberOfContours;
   stbtt_uint8 *endPtsOfContours;
   stbtt_uint8 *data = info->data;
   stbtt_vertex *vertices=0;
   int num_vertices=0;
   int g = stbtt__GetGlyfOffset(info, glyph_index);

   *pvertices = 0;

   if (g < 0) return 0;

   numberOfContours = ttSHORT(data + g);

   if (numberOfContours > 0) {
      stbtt_uint8 flags=0,flagcount;
      stbtt_int32 ins, i,j=0,m,n, next_move, was_off=0, off, start_off=0;
      stbtt_int32 x,y,cx,cy,sx,sy, scx,scy;
      stbtt_uint8 *points;
      endPtsOfContours = (data + g + 10);
      ins = ttUSHORT(data + g + 10 + numberOfContours * 2);
      points = data + g + 10 + numberOfContours * 2 + 2 + ins;

      n = 1+ttUSHORT(endPtsOfContours + numberOfContours*2-2);

      m = n + 2*numberOfContours;  
      vertices = (stbtt_vertex *) ((void)(info->userdata), ImGui::MemAlloc(m * sizeof(vertices[0])));
      if (vertices == 0)
         return 0;

      next_move = 0;
      flagcount=0;

      
      
      

      off = m - n; 

      

      for (i=0; i < n; ++i) {
         if (flagcount == 0) {
            flags = *points++;
            if (flags & 8)
               flagcount = *points++;
         } else
            --flagcount;
         vertices[off+i].type = flags;
      }

      
      x=0;
      for (i=0; i < n; ++i) {
         flags = vertices[off+i].type;
         if (flags & 2) {
            stbtt_int16 dx = *points++;
            x += (flags & 16) ? dx : -dx; 
         } else {
            if (!(flags & 16)) {
               x = x + (stbtt_int16) (points[0]*256 + points[1]);
               points += 2;
            }
         }
         vertices[off+i].x = (stbtt_int16) x;
      }

      
      y=0;
      for (i=0; i < n; ++i) {
         flags = vertices[off+i].type;
         if (flags & 4) {
            stbtt_int16 dy = *points++;
            y += (flags & 32) ? dy : -dy; 
         } else {
            if (!(flags & 32)) {
               y = y + (stbtt_int16) (points[0]*256 + points[1]);
               points += 2;
            }
         }
         vertices[off+i].y = (stbtt_int16) y;
      }

      
      num_vertices=0;
      sx = sy = cx = cy = scx = scy = 0;
      for (i=0; i < n; ++i) {
         flags = vertices[off+i].type;
         x     = (stbtt_int16) vertices[off+i].x;
         y     = (stbtt_int16) vertices[off+i].y;

         if (next_move == i) {
            if (i != 0)
               num_vertices = stbtt__close_shape(vertices, num_vertices, was_off, start_off, sx,sy,scx,scy,cx,cy);

            
            start_off = !(flags & 1);
            if (start_off) {
               
               
               scx = x;
               scy = y;
               if (!(vertices[off+i+1].type & 1)) {
                  
                  sx = (x + (stbtt_int32) vertices[off+i+1].x) >> 1;
                  sy = (y + (stbtt_int32) vertices[off+i+1].y) >> 1;
               } else {
                  
                  sx = (stbtt_int32) vertices[off+i+1].x;
                  sy = (stbtt_int32) vertices[off+i+1].y;
                  ++i; 
               }
            } else {
               sx = x;
               sy = y;
            }
            stbtt_setvertex(&vertices[num_vertices++], STBTT_vmove,sx,sy,0,0);
            was_off = 0;
            next_move = 1 + ttUSHORT(endPtsOfContours+j*2);
            ++j;
         } else {
            if (!(flags & 1)) { 
               if (was_off) 
                  stbtt_setvertex(&vertices[num_vertices++], STBTT_vcurve, (cx+x)>>1, (cy+y)>>1, cx, cy);
               cx = x;
               cy = y;
               was_off = 1;
            } else {
               if (was_off)
                  stbtt_setvertex(&vertices[num_vertices++], STBTT_vcurve, x,y, cx, cy);
               else
                  stbtt_setvertex(&vertices[num_vertices++], STBTT_vline, x,y,0,0);
               was_off = 0;
            }
         }
      }
      num_vertices = stbtt__close_shape(vertices, num_vertices, was_off, start_off, sx,sy,scx,scy,cx,cy);
   } else if (numberOfContours == -1) {
      
      int more = 1;
      stbtt_uint8 *comp = data + g + 10;
      num_vertices = 0;
      vertices = 0;
      while (more) {
         stbtt_uint16 flags, gidx;
         int comp_num_verts = 0, i;
         stbtt_vertex *comp_verts = 0, *tmp = 0;
         float mtx[6] = {1,0,0,1,0,0}, m, n;
         
         flags = ttSHORT(comp); comp+=2;
         gidx = ttSHORT(comp); comp+=2;

         if (flags & 2) { 
            if (flags & 1) { 
               mtx[4] = ttSHORT(comp); comp+=2;
               mtx[5] = ttSHORT(comp); comp+=2;
            } else {
               mtx[4] = (* (stbtt_int8 *) (comp)); comp+=1;
               mtx[5] = (* (stbtt_int8 *) (comp)); comp+=1;
            }
         }
         else {
            
            (void)( (!!(0)) || (_wassert(L"0", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1670)), 0) );
         }
         if (flags & (1<<3)) { 
            mtx[0] = mtx[3] = ttSHORT(comp)/16384.0f; comp+=2;
            mtx[1] = mtx[2] = 0;
         } else if (flags & (1<<6)) { 
            mtx[0] = ttSHORT(comp)/16384.0f; comp+=2;
            mtx[1] = mtx[2] = 0;
            mtx[3] = ttSHORT(comp)/16384.0f; comp+=2;
         } else if (flags & (1<<7)) { 
            mtx[0] = ttSHORT(comp)/16384.0f; comp+=2;
            mtx[1] = ttSHORT(comp)/16384.0f; comp+=2;
            mtx[2] = ttSHORT(comp)/16384.0f; comp+=2;
            mtx[3] = ttSHORT(comp)/16384.0f; comp+=2;
         }
         
         
         m = (float) sqrt(mtx[0]*mtx[0] + mtx[1]*mtx[1]);
         n = (float) sqrt(mtx[2]*mtx[2] + mtx[3]*mtx[3]);

         
         comp_num_verts = stbtt_GetGlyphShape(info, gidx, &comp_verts);
         if (comp_num_verts > 0) {
            
            for (i = 0; i < comp_num_verts; ++i) {
               stbtt_vertex* v = &comp_verts[i];
               short x,y;
               x=v->x; y=v->y;
               v->x = (short)(m * (mtx[0]*x + mtx[2]*y + mtx[4]));
               v->y = (short)(n * (mtx[1]*x + mtx[3]*y + mtx[5]));
               x=v->cx; y=v->cy;
               v->cx = (short)(m * (mtx[0]*x + mtx[2]*y + mtx[4]));
               v->cy = (short)(n * (mtx[1]*x + mtx[3]*y + mtx[5]));
            }
            
            tmp = (stbtt_vertex*)((void)(info->userdata), ImGui::MemAlloc((num_vertices+comp_num_verts)*sizeof(stbtt_vertex)));
            if (!tmp) {
               if (vertices) ((void)(info->userdata), ImGui::MemFree(vertices));
               if (comp_verts) ((void)(info->userdata), ImGui::MemFree(comp_verts));
               return 0;
            }
            if (num_vertices > 0) memcpy(tmp, vertices, num_vertices*sizeof(stbtt_vertex));
            memcpy(tmp+num_vertices, comp_verts, comp_num_verts*sizeof(stbtt_vertex));
            if (vertices) ((void)(info->userdata), ImGui::MemFree(vertices));
            vertices = tmp;
            ((void)(info->userdata), ImGui::MemFree(comp_verts));
            num_vertices += comp_num_verts;
         }
         
         more = flags & (1<<5);
      }
   } else if (numberOfContours < 0) {
      
      (void)( (!!(0)) || (_wassert(L"0", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(1723)), 0) );
   } else {
      
   }

   *pvertices = vertices;
   return num_vertices;
}

typedef struct
{
   int bounds;
   int started;
   float first_x, first_y;
   float x, y;
   stbtt_int32 min_x, max_x, min_y, max_y;

   stbtt_vertex *pvertices;
   int num_vertices;
} stbtt__csctx;



static void stbtt__track_vertex(stbtt__csctx *c, stbtt_int32 x, stbtt_int32 y)
{
   if (x > c->max_x || !c->started) c->max_x = x;
   if (y > c->max_y || !c->started) c->max_y = y;
   if (x < c->min_x || !c->started) c->min_x = x;
   if (y < c->min_y || !c->started) c->min_y = y;
   c->started = 1;
}

static void stbtt__csctx_v(stbtt__csctx *c, stbtt_uint8 type, stbtt_int32 x, stbtt_int32 y, stbtt_int32 cx, stbtt_int32 cy, stbtt_int32 cx1, stbtt_int32 cy1)
{
   if (c->bounds) {
      stbtt__track_vertex(c, x, y);
      if (type == STBTT_vcubic) {
         stbtt__track_vertex(c, cx, cy);
         stbtt__track_vertex(c, cx1, cy1);
      }
   } else {
      stbtt_setvertex(&c->pvertices[c->num_vertices], type, x, y, cx, cy);
      c->pvertices[c->num_vertices].cx1 = (stbtt_int16) cx1;
      c->pvertices[c->num_vertices].cy1 = (stbtt_int16) cy1;
   }
   c->num_vertices++;
}

static void stbtt__csctx_close_shape(stbtt__csctx *ctx)
{
   if (ctx->first_x != ctx->x || ctx->first_y != ctx->y)
      stbtt__csctx_v(ctx, STBTT_vline, (int)ctx->first_x, (int)ctx->first_y, 0, 0, 0, 0);
}

static void stbtt__csctx_rmove_to(stbtt__csctx *ctx, float dx, float dy)
{
   stbtt__csctx_close_shape(ctx);
   ctx->first_x = ctx->x = ctx->x + dx;
   ctx->first_y = ctx->y = ctx->y + dy;
   stbtt__csctx_v(ctx, STBTT_vmove, (int)ctx->x, (int)ctx->y, 0, 0, 0, 0);
}

static void stbtt__csctx_rline_to(stbtt__csctx *ctx, float dx, float dy)
{
   ctx->x += dx;
   ctx->y += dy;
   stbtt__csctx_v(ctx, STBTT_vline, (int)ctx->x, (int)ctx->y, 0, 0, 0, 0);
}

static void stbtt__csctx_rccurve_to(stbtt__csctx *ctx, float dx1, float dy1, float dx2, float dy2, float dx3, float dy3)
{
   float cx1 = ctx->x + dx1;
   float cy1 = ctx->y + dy1;
   float cx2 = cx1 + dx2;
   float cy2 = cy1 + dy2;
   ctx->x = cx2 + dx3;
   ctx->y = cy2 + dy3;
   stbtt__csctx_v(ctx, STBTT_vcubic, (int)ctx->x, (int)ctx->y, (int)cx1, (int)cy1, (int)cx2, (int)cy2);
}

static stbtt__buf stbtt__get_subr(stbtt__buf idx, int n)
{
   int count = stbtt__cff_index_count(&idx);
   int bias = 107;
   if (count >= 33900)
      bias = 32768;
   else if (count >= 1240)
      bias = 1131;
   n += bias;
   if (n < 0 || n >= count)
      return stbtt__new_buf(0, 0);
   return stbtt__cff_index_get(idx, n);
}

static stbtt__buf stbtt__cid_get_glyph_subrs(const stbtt_fontinfo *info, int glyph_index)
{
   stbtt__buf fdselect = info->fdselect;
   int nranges, start, end, v, fmt, fdselector = -1, i;

   stbtt__buf_seek(&fdselect, 0);
   fmt = stbtt__buf_get8(&fdselect);
   if (fmt == 0) {
      
      stbtt__buf_skip(&fdselect, glyph_index);
      fdselector = stbtt__buf_get8(&fdselect);
   } else if (fmt == 3) {
      nranges = stbtt__buf_get((&fdselect), 2);
      start = stbtt__buf_get((&fdselect), 2);
      for (i = 0; i < nranges; i++) {
         v = stbtt__buf_get8(&fdselect);
         end = stbtt__buf_get((&fdselect), 2);
         if (glyph_index >= start && glyph_index < end) {
            fdselector = v;
            break;
         }
         start = end;
      }
   }
   if (fdselector == -1) stbtt__new_buf(0, 0);
   return stbtt__get_subrs(info->cff, stbtt__cff_index_get(info->fontdicts, fdselector));
}

static int stbtt__run_charstring(const stbtt_fontinfo *info, int glyph_index, stbtt__csctx *c)
{
   int in_header = 1, maskbits = 0, subr_stack_height = 0, sp = 0, v, i, b0;
   int has_subrs = 0, clear_stack;
   float s[48];
   stbtt__buf subr_stack[10], subrs = info->subrs, b;
   float f;



   
   b = stbtt__cff_index_get(info->charstrings, glyph_index);
   while (b.cursor < b.size) {
      i = 0;
      clear_stack = 1;
      b0 = stbtt__buf_get8(&b);
      switch (b0) {
      
      case 0x13: 
      case 0x14: 
         if (in_header)
            maskbits += (sp / 2); 
         in_header = 0;
         stbtt__buf_skip(&b, (maskbits + 7) / 8);
         break;

      case 0x01: 
      case 0x03: 
      case 0x12: 
      case 0x17: 
         maskbits += (sp / 2);
         break;

      case 0x15: 
         in_header = 0;
         if (sp < 2) return (0);
         stbtt__csctx_rmove_to(c, s[sp-2], s[sp-1]);
         break;
      case 0x04: 
         in_header = 0;
         if (sp < 1) return (0);
         stbtt__csctx_rmove_to(c, 0, s[sp-1]);
         break;
      case 0x16: 
         in_header = 0;
         if (sp < 1) return (0);
         stbtt__csctx_rmove_to(c, s[sp-1], 0);
         break;

      case 0x05: 
         if (sp < 2) return (0);
         for (; i + 1 < sp; i += 2)
            stbtt__csctx_rline_to(c, s[i], s[i+1]);
         break;

      
      

      case 0x07: 
         if (sp < 1) return (0);
         goto vlineto;
      case 0x06: 
         if (sp < 1) return (0);
         for (;;) {
            if (i >= sp) break;
            stbtt__csctx_rline_to(c, s[i], 0);
            i++;
      vlineto:
            if (i >= sp) break;
            stbtt__csctx_rline_to(c, 0, s[i]);
            i++;
         }
         break;

      case 0x1F: 
         if (sp < 4) return (0);
         goto hvcurveto;
      case 0x1E: 
         if (sp < 4) return (0);
         for (;;) {
            if (i + 3 >= sp) break;
            stbtt__csctx_rccurve_to(c, 0, s[i], s[i+1], s[i+2], s[i+3], (sp - i == 5) ? s[i + 4] : 0.0f);
            i += 4;
      hvcurveto:
            if (i + 3 >= sp) break;
            stbtt__csctx_rccurve_to(c, s[i], 0, s[i+1], s[i+2], (sp - i == 5) ? s[i+4] : 0.0f, s[i+3]);
            i += 4;
         }
         break;

      case 0x08: 
         if (sp < 6) return (0);
         for (; i + 5 < sp; i += 6)
            stbtt__csctx_rccurve_to(c, s[i], s[i+1], s[i+2], s[i+3], s[i+4], s[i+5]);
         break;

      case 0x18: 
         if (sp < 8) return (0);
         for (; i + 5 < sp - 2; i += 6)
            stbtt__csctx_rccurve_to(c, s[i], s[i+1], s[i+2], s[i+3], s[i+4], s[i+5]);
         if (i + 1 >= sp) return (0);
         stbtt__csctx_rline_to(c, s[i], s[i+1]);
         break;

      case 0x19: 
         if (sp < 8) return (0);
         for (; i + 1 < sp - 6; i += 2)
            stbtt__csctx_rline_to(c, s[i], s[i+1]);
         if (i + 5 >= sp) return (0);
         stbtt__csctx_rccurve_to(c, s[i], s[i+1], s[i+2], s[i+3], s[i+4], s[i+5]);
         break;

      case 0x1A: 
      case 0x1B: 
         if (sp < 4) return (0);
         f = 0.0;
         if (sp & 1) { f = s[i]; i++; }
         for (; i + 3 < sp; i += 4) {
            if (b0 == 0x1B)
               stbtt__csctx_rccurve_to(c, s[i], f, s[i+1], s[i+2], s[i+3], 0.0);
            else
               stbtt__csctx_rccurve_to(c, f, s[i], s[i+1], s[i+2], 0.0, s[i+3]);
            f = 0.0;
         }
         break;

      case 0x0A: 
         if (!has_subrs) {
            if (info->fdselect.size)
               subrs = stbtt__cid_get_glyph_subrs(info, glyph_index);
            has_subrs = 1;
         }
         
      case 0x1D: 
         if (sp < 1) return (0);
         v = (int) s[--sp];
         if (subr_stack_height >= 10) return (0);
         subr_stack[subr_stack_height++] = b;
         b = stbtt__get_subr(b0 == 0x0A ? subrs : info->gsubrs, v);
         if (b.size == 0) return (0);
         b.cursor = 0;
         clear_stack = 0;
         break;

      case 0x0B: 
         if (subr_stack_height <= 0) return (0);
         b = subr_stack[--subr_stack_height];
         clear_stack = 0;
         break;

      case 0x0E: 
         stbtt__csctx_close_shape(c);
         return 1;

      case 0x0C: { 
         float dx1, dx2, dx3, dx4, dx5, dx6, dy1, dy2, dy3, dy4, dy5, dy6;
         float dx, dy;
         int b1 = stbtt__buf_get8(&b);
         switch (b1) {
         
         
         case 0x22: 
            if (sp < 7) return (0);
            dx1 = s[0];
            dx2 = s[1];
            dy2 = s[2];
            dx3 = s[3];
            dx4 = s[4];
            dx5 = s[5];
            dx6 = s[6];
            stbtt__csctx_rccurve_to(c, dx1, 0, dx2, dy2, dx3, 0);
            stbtt__csctx_rccurve_to(c, dx4, 0, dx5, -dy2, dx6, 0);
            break;

         case 0x23: 
            if (sp < 13) return (0);
            dx1 = s[0];
            dy1 = s[1];
            dx2 = s[2];
            dy2 = s[3];
            dx3 = s[4];
            dy3 = s[5];
            dx4 = s[6];
            dy4 = s[7];
            dx5 = s[8];
            dy5 = s[9];
            dx6 = s[10];
            dy6 = s[11];
            
            stbtt__csctx_rccurve_to(c, dx1, dy1, dx2, dy2, dx3, dy3);
            stbtt__csctx_rccurve_to(c, dx4, dy4, dx5, dy5, dx6, dy6);
            break;

         case 0x24: 
            if (sp < 9) return (0);
            dx1 = s[0];
            dy1 = s[1];
            dx2 = s[2];
            dy2 = s[3];
            dx3 = s[4];
            dx4 = s[5];
            dx5 = s[6];
            dy5 = s[7];
            dx6 = s[8];
            stbtt__csctx_rccurve_to(c, dx1, dy1, dx2, dy2, dx3, 0);
            stbtt__csctx_rccurve_to(c, dx4, 0, dx5, dy5, dx6, -(dy1+dy2+dy5));
            break;

         case 0x25: 
            if (sp < 11) return (0);
            dx1 = s[0];
            dy1 = s[1];
            dx2 = s[2];
            dy2 = s[3];
            dx3 = s[4];
            dy3 = s[5];
            dx4 = s[6];
            dy4 = s[7];
            dx5 = s[8];
            dy5 = s[9];
            dx6 = dy6 = s[10];
            dx = dx1+dx2+dx3+dx4+dx5;
            dy = dy1+dy2+dy3+dy4+dy5;
            if (fabs(dx) > fabs(dy))
               dy6 = -dy;
            else
               dx6 = -dx;
            stbtt__csctx_rccurve_to(c, dx1, dy1, dx2, dy2, dx3, dy3);
            stbtt__csctx_rccurve_to(c, dx4, dy4, dx5, dy5, dx6, dy6);
            break;

         default:
            return (0);
         }
      } break;

      default:
         if (b0 != 255 && b0 != 28 && (b0 < 32 || b0 > 254))
            return (0);

         
         if (b0 == 255) {
            f = (float)stbtt__buf_get((&b), 4) / 0x10000;
         } else {
            stbtt__buf_skip(&b, -1);
            f = (float)(stbtt_int16)stbtt__cff_int(&b);
         }
         if (sp >= 48) return (0);
         s[sp++] = f;
         clear_stack = 0;
         break;
      }
      if (clear_stack) sp = 0;
   }
   return (0);


}

static int stbtt__GetGlyphShapeT2(const stbtt_fontinfo *info, int glyph_index, stbtt_vertex **pvertices)
{
   
   stbtt__csctx count_ctx = {1,0, 0,0, 0,0, 0,0,0,0, 0, 0};
   stbtt__csctx output_ctx = {0,0, 0,0, 0,0, 0,0,0,0, 0, 0};
   if (stbtt__run_charstring(info, glyph_index, &count_ctx)) {
      *pvertices = (stbtt_vertex*)((void)(info->userdata), ImGui::MemAlloc(count_ctx.num_vertices*sizeof(stbtt_vertex)));
      output_ctx.pvertices = *pvertices;
      if (stbtt__run_charstring(info, glyph_index, &output_ctx)) {
         (void)( (!!(output_ctx.num_vertices == count_ctx.num_vertices)) || (_wassert(L"output_ctx.num_vertices == count_ctx.num_vertices", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2113)), 0) );
         return output_ctx.num_vertices;
      }
   }
   *pvertices = 0;
   return 0;
}

static int stbtt__GetGlyphInfoT2(const stbtt_fontinfo *info, int glyph_index, int *x0, int *y0, int *x1, int *y1)
{
   stbtt__csctx c = {1,0, 0,0, 0,0, 0,0,0,0, 0, 0};
   int r = stbtt__run_charstring(info, glyph_index, &c);
   if (x0) {
      *x0 = r ? c.min_x : 0;
      *y0 = r ? c.min_y : 0;
      *x1 = r ? c.max_x : 0;
      *y1 = r ? c.max_y : 0;
   }
   return r ? c.num_vertices : 0;
}

static int stbtt_GetGlyphShape(const stbtt_fontinfo *info, int glyph_index, stbtt_vertex **pvertices)
{
   if (!info->cff.size)
      return stbtt__GetGlyphShapeTT(info, glyph_index, pvertices);
   else
      return stbtt__GetGlyphShapeT2(info, glyph_index, pvertices);
}

static void stbtt_GetGlyphHMetrics(const stbtt_fontinfo *info, int glyph_index, int *advanceWidth, int *leftSideBearing)
{
   stbtt_uint16 numOfLongHorMetrics = ttUSHORT(info->data+info->hhea + 34);
   if (glyph_index < numOfLongHorMetrics) {
      if (advanceWidth)     *advanceWidth    = ttSHORT(info->data + info->hmtx + 4*glyph_index);
      if (leftSideBearing)  *leftSideBearing = ttSHORT(info->data + info->hmtx + 4*glyph_index + 2);
   } else {
      if (advanceWidth)     *advanceWidth    = ttSHORT(info->data + info->hmtx + 4*(numOfLongHorMetrics-1));
      if (leftSideBearing)  *leftSideBearing = ttSHORT(info->data + info->hmtx + 4*numOfLongHorMetrics + 2*(glyph_index - numOfLongHorMetrics));
   }
}

static int  stbtt_GetGlyphKernAdvance(const stbtt_fontinfo *info, int glyph1, int glyph2)
{
   stbtt_uint8 *data = info->data + info->kern;
   stbtt_uint32 needle, straw;
   int l, r, m;

   
   if (!info->kern)
      return 0;
   if (ttUSHORT(data+2) < 1) 
      return 0;
   if (ttUSHORT(data+8) != 1) 
      return 0;

   l = 0;
   r = ttUSHORT(data+10) - 1;
   needle = glyph1 << 16 | glyph2;
   while (l <= r) {
      m = (l + r) >> 1;
      straw = ttULONG(data+18+(m*6)); 
      if (needle < straw)
         r = m - 1;
      else if (needle > straw)
         l = m + 1;
      else
         return ttSHORT(data+22+(m*6));
   }
   return 0;
}

static int  stbtt_GetCodepointKernAdvance(const stbtt_fontinfo *info, int ch1, int ch2)
{
   if (!info->kern) 
      return 0;
   return stbtt_GetGlyphKernAdvance(info, stbtt_FindGlyphIndex(info,ch1), stbtt_FindGlyphIndex(info,ch2));
}

static void stbtt_GetCodepointHMetrics(const stbtt_fontinfo *info, int codepoint, int *advanceWidth, int *leftSideBearing)
{
   stbtt_GetGlyphHMetrics(info, stbtt_FindGlyphIndex(info,codepoint), advanceWidth, leftSideBearing);
}

static void stbtt_GetFontVMetrics(const stbtt_fontinfo *info, int *ascent, int *descent, int *lineGap)
{
   if (ascent ) *ascent  = ttSHORT(info->data+info->hhea + 4);
   if (descent) *descent = ttSHORT(info->data+info->hhea + 6);
   if (lineGap) *lineGap = ttSHORT(info->data+info->hhea + 8);
}

static void stbtt_GetFontBoundingBox(const stbtt_fontinfo *info, int *x0, int *y0, int *x1, int *y1)
{
   *x0 = ttSHORT(info->data + info->head + 36);
   *y0 = ttSHORT(info->data + info->head + 38);
   *x1 = ttSHORT(info->data + info->head + 40);
   *y1 = ttSHORT(info->data + info->head + 42);
}

static float stbtt_ScaleForPixelHeight(const stbtt_fontinfo *info, float height)
{
   int fheight = ttSHORT(info->data + info->hhea + 4) - ttSHORT(info->data + info->hhea + 6);
   return (float) height / fheight;
}

static float stbtt_ScaleForMappingEmToPixels(const stbtt_fontinfo *info, float pixels)
{
   int unitsPerEm = ttUSHORT(info->data + info->head + 18);
   return pixels / unitsPerEm;
}

static void stbtt_FreeShape(const stbtt_fontinfo *info, stbtt_vertex *v)
{
   ((void)(info->userdata), ImGui::MemFree(v));
}






static void stbtt_GetGlyphBitmapBoxSubpixel(const stbtt_fontinfo *font, int glyph, float scale_x, float scale_y,float shift_x, float shift_y, int *ix0, int *iy0, int *ix1, int *iy1)
{
   int x0=0,y0=0,x1,y1; 
   if (!stbtt_GetGlyphBox(font, glyph, &x0,&y0,&x1,&y1)) {
      
      if (ix0) *ix0 = 0;
      if (iy0) *iy0 = 0;
      if (ix1) *ix1 = 0;
      if (iy1) *iy1 = 0;
   } else {
      
      if (ix0) *ix0 = ((int) floor(x0 * scale_x + shift_x));
      if (iy0) *iy0 = ((int) floor(-y1 * scale_y + shift_y));
      if (ix1) *ix1 = ((int) ceil(x1 * scale_x + shift_x));
      if (iy1) *iy1 = ((int) ceil(-y0 * scale_y + shift_y));
   }
}

static void stbtt_GetGlyphBitmapBox(const stbtt_fontinfo *font, int glyph, float scale_x, float scale_y, int *ix0, int *iy0, int *ix1, int *iy1)
{
   stbtt_GetGlyphBitmapBoxSubpixel(font, glyph, scale_x, scale_y,0.0f,0.0f, ix0, iy0, ix1, iy1);
}

static void stbtt_GetCodepointBitmapBoxSubpixel(const stbtt_fontinfo *font, int codepoint, float scale_x, float scale_y, float shift_x, float shift_y, int *ix0, int *iy0, int *ix1, int *iy1)
{
   stbtt_GetGlyphBitmapBoxSubpixel(font, stbtt_FindGlyphIndex(font,codepoint), scale_x, scale_y,shift_x,shift_y, ix0,iy0,ix1,iy1);
}

static void stbtt_GetCodepointBitmapBox(const stbtt_fontinfo *font, int codepoint, float scale_x, float scale_y, int *ix0, int *iy0, int *ix1, int *iy1)
{
   stbtt_GetCodepointBitmapBoxSubpixel(font, codepoint, scale_x, scale_y,0.0f,0.0f, ix0,iy0,ix1,iy1);
}





typedef struct stbtt__hheap_chunk
{
   struct stbtt__hheap_chunk *next;
} stbtt__hheap_chunk;

typedef struct stbtt__hheap
{
   struct stbtt__hheap_chunk *head;
   void   *first_free;
   int    num_remaining_in_head_chunk;
} stbtt__hheap;

static void *stbtt__hheap_alloc(stbtt__hheap *hh, size_t size, void *userdata)
{
   if (hh->first_free) {
      void *p = hh->first_free;
      hh->first_free = * (void **) p;
      return p;
   } else {
      if (hh->num_remaining_in_head_chunk == 0) {
         int count = (size < 32 ? 2000 : size < 128 ? 800 : 100);
         stbtt__hheap_chunk *c = (stbtt__hheap_chunk *) ((void)(userdata), ImGui::MemAlloc(sizeof(stbtt__hheap_chunk) + size * count));
         if (c == 0)
            return 0;
         c->next = hh->head;
         hh->head = c;
         hh->num_remaining_in_head_chunk = count;
      }
      --hh->num_remaining_in_head_chunk;
      return (char *) (hh->head) + size * hh->num_remaining_in_head_chunk;
   }
}

static void stbtt__hheap_free(stbtt__hheap *hh, void *p)
{
   *(void **) p = hh->first_free;
   hh->first_free = p;
}

static void stbtt__hheap_cleanup(stbtt__hheap *hh, void *userdata)
{
   stbtt__hheap_chunk *c = hh->head;
   while (c) {
      stbtt__hheap_chunk *n = c->next;
      ((void)(userdata), ImGui::MemFree(c));
      c = n;
   }
}

typedef struct stbtt__edge {
   float x0,y0, x1,y1;
   int invert;
} stbtt__edge;


typedef struct stbtt__active_edge
{
   struct stbtt__active_edge *next;
   



#line 2333 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"
   float fx,fdx,fdy;
   float direction;
   float sy;
   float ey;
   

#line 2340 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"
} stbtt__active_edge;



























#line 2369 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"
static stbtt__active_edge *stbtt__new_active(stbtt__hheap *hh, stbtt__edge *e, int off_x, float start_point, void *userdata)
{
   stbtt__active_edge *z = (stbtt__active_edge *) stbtt__hheap_alloc(hh, sizeof(*z), userdata);
   float dxdy = (e->x1 - e->x0) / (e->y1 - e->y0);
   (void)( (!!(z != 0)) || (_wassert(L"z != 0", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2373)), 0) );
   
   if (!z) return z;
   z->fdx = dxdy;
   z->fdy = dxdy != 0.0f ? (1.0f/dxdy) : 0.0f;
   z->fx = e->x0 + dxdy * (start_point - e->y0);
   z->fx -= off_x;
   z->direction = e->invert ? 1.0f : -1.0f;
   z->sy = e->y0;
   z->ey = e->y1;
   z->next = 0;
   return z;
}


#line 2389 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"



















































































































































#line 2537 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"



static void stbtt__handle_clipped_edge(float *scanline, int x, stbtt__active_edge *e, float x0, float y0, float x1, float y1)
{
   if (y0 == y1) return;
   (void)( (!!(y0 < y1)) || (_wassert(L"y0 < y1", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2543)), 0) );
   (void)( (!!(e->sy <= e->ey)) || (_wassert(L"e->sy <= e->ey", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2544)), 0) );
   if (y0 > e->ey) return;
   if (y1 < e->sy) return;
   if (y0 < e->sy) {
      x0 += (x1-x0) * (e->sy - y0) / (y1-y0);
      y0 = e->sy;
   }
   if (y1 > e->ey) {
      x1 += (x1-x0) * (e->ey - y1) / (y1-y0);
      y1 = e->ey;
   }

   if (x0 == x)
      (void)( (!!(x1 <= x+1)) || (_wassert(L"x1 <= x+1", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2557)), 0) );
   else if (x0 == x+1)
      (void)( (!!(x1 >= x)) || (_wassert(L"x1 >= x", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2559)), 0) );
   else if (x0 <= x)
      (void)( (!!(x1 <= x)) || (_wassert(L"x1 <= x", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2561)), 0) );
   else if (x0 >= x+1)
      (void)( (!!(x1 >= x+1)) || (_wassert(L"x1 >= x+1", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2563)), 0) );
   else
      (void)( (!!(x1 >= x && x1 <= x+1)) || (_wassert(L"x1 >= x && x1 <= x+1", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2565)), 0) );

   if (x0 <= x && x1 <= x)
      scanline[x] += e->direction * (y1-y0);
   else if (x0 >= x+1 && x1 >= x+1)
      ;
   else {
      (void)( (!!(x0 >= x && x0 <= x+1 && x1 >= x && x1 <= x+1)) || (_wassert(L"x0 >= x && x0 <= x+1 && x1 >= x && x1 <= x+1", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2572)), 0) );
      scanline[x] += e->direction * (y1-y0) * (1-((x0-x)+(x1-x))/2); 
   }
}

static void stbtt__fill_active_edges_new(float *scanline, float *scanline_fill, int len, stbtt__active_edge *e, float y_top)
{
   float y_bottom = y_top+1;

   while (e) {
      

      
      (void)( (!!(e->ey >= y_top)) || (_wassert(L"e->ey >= y_top", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2585)), 0) );

      if (e->fdx == 0) {
         float x0 = e->fx;
         if (x0 < len) {
            if (x0 >= 0) {
               stbtt__handle_clipped_edge(scanline,(int) x0,e, x0,y_top, x0,y_bottom);
               stbtt__handle_clipped_edge(scanline_fill-1,(int) x0+1,e, x0,y_top, x0,y_bottom);
            } else {
               stbtt__handle_clipped_edge(scanline_fill-1,0,e, x0,y_top, x0,y_bottom);
            }
         }
      } else {
         float x0 = e->fx;
         float dx = e->fdx;
         float xb = x0 + dx;
         float x_top, x_bottom;
         float sy0,sy1;
         float dy = e->fdy;
         (void)( (!!(e->sy <= y_bottom && e->ey >= y_top)) || (_wassert(L"e->sy <= y_bottom && e->ey >= y_top", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2604)), 0) );

         
         
         
         if (e->sy > y_top) {
            x_top = x0 + dx * (e->sy - y_top);
            sy0 = e->sy;
         } else {
            x_top = x0;
            sy0 = y_top;
         }
         if (e->ey < y_bottom) {
            x_bottom = x0 + dx * (e->ey - y_top);
            sy1 = e->ey;
         } else {
            x_bottom = xb;
            sy1 = y_bottom;
         }

         if (x_top >= 0 && x_bottom >= 0 && x_top < len && x_bottom < len) {
            

            if ((int) x_top == (int) x_bottom) {
               float height;
               
               int x = (int) x_top;
               height = sy1 - sy0;
               (void)( (!!(x >= 0 && x < len)) || (_wassert(L"x >= 0 && x < len", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2632)), 0) );
               scanline[x] += e->direction * (1-((x_top - x) + (x_bottom-x))/2)  * height;
               scanline_fill[x] += e->direction * height; 
            } else {
               int x,x1,x2;
               float y_crossing, step, sign, area;
               
               if (x_top > x_bottom) {
                  
                  float t;
                  sy0 = y_bottom - (sy0 - y_top);
                  sy1 = y_bottom - (sy1 - y_top);
                  t = sy0, sy0 = sy1, sy1 = t;
                  t = x_bottom, x_bottom = x_top, x_top = t;
                  dx = -dx;
                  dy = -dy;
                  t = x0, x0 = xb, xb = t;
               }

               x1 = (int) x_top;
               x2 = (int) x_bottom;
               
               y_crossing = (x1+1 - x0) * dy + y_top;

               sign = e->direction;
               
               area = sign * (y_crossing-sy0);
               
               scanline[x1] += area * (1-((x_top - x1)+(x1+1-x1))/2);

               step = sign * dy;
               for (x = x1+1; x < x2; ++x) {
                  scanline[x] += area + step/2;
                  area += step;
               }
               y_crossing += dy * (x2 - (x1+1));

               (void)( (!!(fabs(area) <= 1.01f)) || (_wassert(L"fabs(area) <= 1.01f", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2669)), 0) );

               scanline[x2] += area + sign * (1-((x2-x2)+(x_bottom-x2))/2) * (sy1-y_crossing);

               scanline_fill[x2] += sign * (sy1-sy0);
            }
         } else {
            
            
            
            
            int x;
            for (x=0; x < len; ++x) {
               
               
               
               
               
               
               
               
               
               
               
               

               
               float y0 = y_top;
               float x1 = (float) (x);
               float x2 = (float) (x+1);
               float x3 = xb;
               float y3 = y_bottom;
               float y1,y2;

               
               
               
               y1 = (x - x0) / dx + y_top;
               y2 = (x+1 - x0) / dx + y_top;

               if (x0 < x1 && x3 > x2) {         
                  stbtt__handle_clipped_edge(scanline,x,e, x0,y0, x1,y1);
                  stbtt__handle_clipped_edge(scanline,x,e, x1,y1, x2,y2);
                  stbtt__handle_clipped_edge(scanline,x,e, x2,y2, x3,y3);
               } else if (x3 < x1 && x0 > x2) {  
                  stbtt__handle_clipped_edge(scanline,x,e, x0,y0, x2,y2);
                  stbtt__handle_clipped_edge(scanline,x,e, x2,y2, x1,y1);
                  stbtt__handle_clipped_edge(scanline,x,e, x1,y1, x3,y3);
               } else if (x0 < x1 && x3 > x1) {  
                  stbtt__handle_clipped_edge(scanline,x,e, x0,y0, x1,y1);
                  stbtt__handle_clipped_edge(scanline,x,e, x1,y1, x3,y3);
               } else if (x3 < x1 && x0 > x1) {  
                  stbtt__handle_clipped_edge(scanline,x,e, x0,y0, x1,y1);
                  stbtt__handle_clipped_edge(scanline,x,e, x1,y1, x3,y3);
               } else if (x0 < x2 && x3 > x2) {  
                  stbtt__handle_clipped_edge(scanline,x,e, x0,y0, x2,y2);
                  stbtt__handle_clipped_edge(scanline,x,e, x2,y2, x3,y3);
               } else if (x3 < x2 && x0 > x2) {  
                  stbtt__handle_clipped_edge(scanline,x,e, x0,y0, x2,y2);
                  stbtt__handle_clipped_edge(scanline,x,e, x2,y2, x3,y3);
               } else {  
                  stbtt__handle_clipped_edge(scanline,x,e, x0,y0, x3,y3);
               }
            }
         }
      }
      e = e->next;
   }
}


static void stbtt__rasterize_sorted_edges(stbtt__bitmap *result, stbtt__edge *e, int n, int vsubsample, int off_x, int off_y, void *userdata)
{
   stbtt__hheap hh = { 0, 0, 0 };
   stbtt__active_edge *active = 0;
   int y,j=0, i;
   float scanline_data[129], *scanline, *scanline2;

   (void)(vsubsample);

   if (result->w > 64)
      scanline = (float *) ((void)(userdata), ImGui::MemAlloc((result->w*2+1) * sizeof(float)));
   else
      scanline = scanline_data;

   scanline2 = scanline + result->w;

   y = off_y;
   e[n].y0 = (float) (off_y + result->h) + 1;

   while (j < result->h) {
      
      float scan_y_top    = y + 0.0f;
      float scan_y_bottom = y + 1.0f;
      stbtt__active_edge **step = &active;

      memset(scanline , 0, result->w*sizeof(scanline[0]));
      memset(scanline2, 0, (result->w+1)*sizeof(scanline[0]));

      
      
      while (*step) {
         stbtt__active_edge * z = *step;
         if (z->ey <= scan_y_top) {
            *step = z->next; 
            (void)( (!!(z->direction)) || (_wassert(L"z->direction", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2774)), 0) );
            z->direction = 0;
            stbtt__hheap_free(&hh, z);
         } else {
            step = &((*step)->next); 
         }
      }

      
      while (e->y0 <= scan_y_bottom) {
         if (e->y0 != e->y1) {
            stbtt__active_edge *z = stbtt__new_active(&hh, e, off_x, scan_y_top, userdata);
            if (z != 0) {
               (void)( (!!(z->ey >= scan_y_top)) || (_wassert(L"z->ey >= scan_y_top", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(2787)), 0) );
               
               z->next = active;
               active = z;
            }
         }
         ++e;
      }

      
      if (active)
         stbtt__fill_active_edges_new(scanline, scanline2+1, result->w, active, scan_y_top);

      {
         float sum = 0;
         for (i=0; i < result->w; ++i) {
            float k;
            int m;
            sum += scanline2[i];
            k = scanline[i] + sum;
            k = (float) fabs(k)*255 + 0.5f;
            m = (int) k;
            if (m > 255) m = 255;
            result->pixels[j*result->stride + i] = (unsigned char) m;
         }
      }
      
      step = &active;
      while (*step) {
         stbtt__active_edge *z = *step;
         z->fx += z->fdx; 
         step = &((*step)->next); 
      }

      ++y;
      ++j;
   }

   stbtt__hheap_cleanup(&hh, userdata);

   if (scanline != scanline_data)
      ((void)(userdata), ImGui::MemFree(scanline));
}


#line 2833 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"



static void stbtt__sort_edges_ins_sort(stbtt__edge *p, int n)
{
   int i,j;
   for (i=1; i < n; ++i) {
      stbtt__edge t = p[i], *a = &t;
      j = i;
      while (j > 0) {
         stbtt__edge *b = &p[j-1];
         int c = ((a)->y0 < (b)->y0);
         if (!c) break;
         p[j] = p[j-1];
         --j;
      }
      if (i != j)
         p[j] = t;
   }
}

static void stbtt__sort_edges_quicksort(stbtt__edge *p, int n)
{
   
   while (n > 12) {
      stbtt__edge t;
      int c01,c12,c,m,i,j;

      
      m = n >> 1;
      c01 = ((&p[0])->y0 < (&p[m])->y0);
      c12 = ((&p[m])->y0 < (&p[n-1])->y0);
      
      if (c01 != c12) {
         
         int z;
         c = ((&p[0])->y0 < (&p[n-1])->y0);
         
         
         z = (c == c12) ? 0 : n-1;
         t = p[z];
         p[z] = p[m];
         p[m] = t;
      }
      
      
      t = p[0];
      p[0] = p[m];
      p[m] = t;

      
      i=1;
      j=n-1;
      for(;;) {
         
         
         for (;;++i) {
            if (!((&p[i])->y0 < (&p[0])->y0)) break;
         }
         for (;;--j) {
            if (!((&p[0])->y0 < (&p[j])->y0)) break;
         }
         
         if (i >= j) break;
         t = p[i];
         p[i] = p[j];
         p[j] = t;

         ++i;
         --j;
      }
      
      if (j < (n-i)) {
         stbtt__sort_edges_quicksort(p,j);
         p = p+i;
         n = n-i;
      } else {
         stbtt__sort_edges_quicksort(p+i, n-i);
         n = j;
      }
   }
}

static void stbtt__sort_edges(stbtt__edge *p, int n)
{
   stbtt__sort_edges_quicksort(p, n);
   stbtt__sort_edges_ins_sort(p, n);
}

typedef struct
{
   float x,y;
} stbtt__point;

static void stbtt__rasterize(stbtt__bitmap *result, stbtt__point *pts, int *wcount, int windings, float scale_x, float scale_y, float shift_x, float shift_y, int off_x, int off_y, int invert, void *userdata)
{
   float y_scale_inv = invert ? -scale_y : scale_y;
   stbtt__edge *e;
   int n,i,j,k,m;


#line 2935 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"
   int vsubsample = 1;


#line 2939 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"
   

   
   n = 0;
   for (i=0; i < windings; ++i)
      n += wcount[i];

   e = (stbtt__edge *) ((void)(userdata), ImGui::MemAlloc(sizeof(*e) * (n+1))); 
   if (e == 0) return;
   n = 0;

   m=0;
   for (i=0; i < windings; ++i) {
      stbtt__point *p = pts + m;
      m += wcount[i];
      j = wcount[i]-1;
      for (k=0; k < wcount[i]; j=k++) {
         int a=k,b=j;
         
         if (p[j].y == p[k].y)
            continue;
         
         e[n].invert = 0;
         if (invert ? p[j].y > p[k].y : p[j].y < p[k].y) {
            e[n].invert = 1;
            a=j,b=k;
         }
         e[n].x0 = p[a].x * scale_x + shift_x;
         e[n].y0 = (p[a].y * y_scale_inv + shift_y) * vsubsample;
         e[n].x1 = p[b].x * scale_x + shift_x;
         e[n].y1 = (p[b].y * y_scale_inv + shift_y) * vsubsample;
         ++n;
      }
   }

   
   
   stbtt__sort_edges(e, n);

   
   stbtt__rasterize_sorted_edges(result, e, n, vsubsample, off_x, off_y, userdata);

   ((void)(userdata), ImGui::MemFree(e));
}

static void stbtt__add_point(stbtt__point *points, int n, float x, float y)
{
   if (!points) return; 
   points[n].x = x;
   points[n].y = y;
}


static int stbtt__tesselate_curve(stbtt__point *points, int *num_points, float x0, float y0, float x1, float y1, float x2, float y2, float objspace_flatness_squared, int n)
{
   
   float mx = (x0 + 2*x1 + x2)/4;
   float my = (y0 + 2*y1 + y2)/4;
   
   float dx = (x0+x2)/2 - mx;
   float dy = (y0+y2)/2 - my;
   if (n > 16) 
      return 1;
   if (dx*dx+dy*dy > objspace_flatness_squared) { 
      stbtt__tesselate_curve(points, num_points, x0,y0, (x0+x1)/2.0f,(y0+y1)/2.0f, mx,my, objspace_flatness_squared,n+1);
      stbtt__tesselate_curve(points, num_points, mx,my, (x1+x2)/2.0f,(y1+y2)/2.0f, x2,y2, objspace_flatness_squared,n+1);
   } else {
      stbtt__add_point(points, *num_points,x2,y2);
      *num_points = *num_points+1;
   }
   return 1;
}

static void stbtt__tesselate_cubic(stbtt__point *points, int *num_points, float x0, float y0, float x1, float y1, float x2, float y2, float x3, float y3, float objspace_flatness_squared, int n)
{
   
   float dx0 = x1-x0;
   float dy0 = y1-y0;
   float dx1 = x2-x1;
   float dy1 = y2-y1;
   float dx2 = x3-x2;
   float dy2 = y3-y2;
   float dx = x3-x0;
   float dy = y3-y0;
   float longlen = (float) (sqrt(dx0*dx0+dy0*dy0)+sqrt(dx1*dx1+dy1*dy1)+sqrt(dx2*dx2+dy2*dy2));
   float shortlen = (float) sqrt(dx*dx+dy*dy);
   float flatness_squared = longlen*longlen-shortlen*shortlen;

   if (n > 16) 
      return;

   if (flatness_squared > objspace_flatness_squared) {
      float x01 = (x0+x1)/2;
      float y01 = (y0+y1)/2;
      float x12 = (x1+x2)/2;
      float y12 = (y1+y2)/2;
      float x23 = (x2+x3)/2;
      float y23 = (y2+y3)/2;

      float xa = (x01+x12)/2;
      float ya = (y01+y12)/2;
      float xb = (x12+x23)/2;
      float yb = (y12+y23)/2;

      float mx = (xa+xb)/2;
      float my = (ya+yb)/2;

      stbtt__tesselate_cubic(points, num_points, x0,y0, x01,y01, xa,ya, mx,my, objspace_flatness_squared,n+1);
      stbtt__tesselate_cubic(points, num_points, mx,my, xb,yb, x23,y23, x3,y3, objspace_flatness_squared,n+1);
   } else {
      stbtt__add_point(points, *num_points,x3,y3);
      *num_points = *num_points+1;
   }
}


static stbtt__point *stbtt_FlattenCurves(stbtt_vertex *vertices, int num_verts, float objspace_flatness, int **contour_lengths, int *num_contours, void *userdata)
{
   stbtt__point *points=0;
   int num_points=0;

   float objspace_flatness_squared = objspace_flatness * objspace_flatness;
   int i,n=0,start=0, pass;

   
   for (i=0; i < num_verts; ++i)
      if (vertices[i].type == STBTT_vmove)
         ++n;

   *num_contours = n;
   if (n == 0) return 0;

   *contour_lengths = (int *) ((void)(userdata), ImGui::MemAlloc(sizeof(**contour_lengths) * n));

   if (*contour_lengths == 0) {
      *num_contours = 0;
      return 0;
   }

   
   for (pass=0; pass < 2; ++pass) {
      float x=0,y=0;
      if (pass == 1) {
         points = (stbtt__point *) ((void)(userdata), ImGui::MemAlloc(num_points * sizeof(points[0])));
         if (points == 0) goto error;
      }
      num_points = 0;
      n= -1;
      for (i=0; i < num_verts; ++i) {
         switch (vertices[i].type) {
            case STBTT_vmove:
               
               if (n >= 0)
                  (*contour_lengths)[n] = num_points - start;
               ++n;
               start = num_points;

               x = vertices[i].x, y = vertices[i].y;
               stbtt__add_point(points, num_points++, x,y);
               break;
            case STBTT_vline:
               x = vertices[i].x, y = vertices[i].y;
               stbtt__add_point(points, num_points++, x, y);
               break;
            case STBTT_vcurve:
               stbtt__tesselate_curve(points, &num_points, x,y,
                                        vertices[i].cx, vertices[i].cy,
                                        vertices[i].x,  vertices[i].y,
                                        objspace_flatness_squared, 0);
               x = vertices[i].x, y = vertices[i].y;
               break;
            case STBTT_vcubic:
               stbtt__tesselate_cubic(points, &num_points, x,y,
                                        vertices[i].cx, vertices[i].cy,
                                        vertices[i].cx1, vertices[i].cy1,
                                        vertices[i].x,  vertices[i].y,
                                        objspace_flatness_squared, 0);
               x = vertices[i].x, y = vertices[i].y;
               break;
         }
      }
      (*contour_lengths)[n] = num_points - start;
   }

   return points;
error:
   ((void)(userdata), ImGui::MemFree(points));
   ((void)(userdata), ImGui::MemFree(*contour_lengths));
   *contour_lengths = 0;
   *num_contours = 0;
   return 0;
}

static void stbtt_Rasterize(stbtt__bitmap *result, float flatness_in_pixels, stbtt_vertex *vertices, int num_verts, float scale_x, float scale_y, float shift_x, float shift_y, int x_off, int y_off, int invert, void *userdata)
{
   float scale = scale_x > scale_y ? scale_y : scale_x;
   int winding_count, *winding_lengths;
   stbtt__point *windings = stbtt_FlattenCurves(vertices, num_verts, flatness_in_pixels / scale, &winding_lengths, &winding_count, userdata);
   if (windings) {
      stbtt__rasterize(result, windings, winding_lengths, winding_count, scale_x, scale_y, shift_x, shift_y, x_off, y_off, invert, userdata);
      ((void)(userdata), ImGui::MemFree(winding_lengths));
      ((void)(userdata), ImGui::MemFree(windings));
   }
}

static void stbtt_FreeBitmap(unsigned char *bitmap, void *userdata)
{
   ((void)(userdata), ImGui::MemFree(bitmap));
}

static unsigned char *stbtt_GetGlyphBitmapSubpixel(const stbtt_fontinfo *info, float scale_x, float scale_y, float shift_x, float shift_y, int glyph, int *width, int *height, int *xoff, int *yoff)
{
   int ix0,iy0,ix1,iy1;
   stbtt__bitmap gbm;
   stbtt_vertex *vertices;   
   int num_verts = stbtt_GetGlyphShape(info, glyph, &vertices);

   if (scale_x == 0) scale_x = scale_y;
   if (scale_y == 0) {
      if (scale_x == 0) {
         ((void)(info->userdata), ImGui::MemFree(vertices));
         return 0;
      }
      scale_y = scale_x;
   }

   stbtt_GetGlyphBitmapBoxSubpixel(info, glyph, scale_x, scale_y, shift_x, shift_y, &ix0,&iy0,&ix1,&iy1);

   
   gbm.w = (ix1 - ix0);
   gbm.h = (iy1 - iy0);
   gbm.pixels = 0; 

   if (width ) *width  = gbm.w;
   if (height) *height = gbm.h;
   if (xoff  ) *xoff   = ix0;
   if (yoff  ) *yoff   = iy0;
   
   if (gbm.w && gbm.h) {
      gbm.pixels = (unsigned char *) ((void)(info->userdata), ImGui::MemAlloc(gbm.w * gbm.h));
      if (gbm.pixels) {
         gbm.stride = gbm.w;

         stbtt_Rasterize(&gbm, 0.35f, vertices, num_verts, scale_x, scale_y, shift_x, shift_y, ix0, iy0, 1, info->userdata);
      }
   }
   ((void)(info->userdata), ImGui::MemFree(vertices));
   return gbm.pixels;
}   

static unsigned char *stbtt_GetGlyphBitmap(const stbtt_fontinfo *info, float scale_x, float scale_y, int glyph, int *width, int *height, int *xoff, int *yoff)
{
   return stbtt_GetGlyphBitmapSubpixel(info, scale_x, scale_y, 0.0f, 0.0f, glyph, width, height, xoff, yoff);
}

static void stbtt_MakeGlyphBitmapSubpixel(const stbtt_fontinfo *info, unsigned char *output, int out_w, int out_h, int out_stride, float scale_x, float scale_y, float shift_x, float shift_y, int glyph)
{
   int ix0,iy0;
   stbtt_vertex *vertices;
   int num_verts = stbtt_GetGlyphShape(info, glyph, &vertices);
   stbtt__bitmap gbm;   

   stbtt_GetGlyphBitmapBoxSubpixel(info, glyph, scale_x, scale_y, shift_x, shift_y, &ix0,&iy0,0,0);
   gbm.pixels = output;
   gbm.w = out_w;
   gbm.h = out_h;
   gbm.stride = out_stride;

   if (gbm.w && gbm.h)
      stbtt_Rasterize(&gbm, 0.35f, vertices, num_verts, scale_x, scale_y, shift_x, shift_y, ix0,iy0, 1, info->userdata);

   ((void)(info->userdata), ImGui::MemFree(vertices));
}

static void stbtt_MakeGlyphBitmap(const stbtt_fontinfo *info, unsigned char *output, int out_w, int out_h, int out_stride, float scale_x, float scale_y, int glyph)
{
   stbtt_MakeGlyphBitmapSubpixel(info, output, out_w, out_h, out_stride, scale_x, scale_y, 0.0f,0.0f, glyph);
}

static unsigned char *stbtt_GetCodepointBitmapSubpixel(const stbtt_fontinfo *info, float scale_x, float scale_y, float shift_x, float shift_y, int codepoint, int *width, int *height, int *xoff, int *yoff)
{
   return stbtt_GetGlyphBitmapSubpixel(info, scale_x, scale_y,shift_x,shift_y, stbtt_FindGlyphIndex(info,codepoint), width,height,xoff,yoff);
}   

static void stbtt_MakeCodepointBitmapSubpixel(const stbtt_fontinfo *info, unsigned char *output, int out_w, int out_h, int out_stride, float scale_x, float scale_y, float shift_x, float shift_y, int codepoint)
{
   stbtt_MakeGlyphBitmapSubpixel(info, output, out_w, out_h, out_stride, scale_x, scale_y, shift_x, shift_y, stbtt_FindGlyphIndex(info,codepoint));
}

static unsigned char *stbtt_GetCodepointBitmap(const stbtt_fontinfo *info, float scale_x, float scale_y, int codepoint, int *width, int *height, int *xoff, int *yoff)
{
   return stbtt_GetCodepointBitmapSubpixel(info, scale_x, scale_y, 0.0f,0.0f, codepoint, width,height,xoff,yoff);
}   

static void stbtt_MakeCodepointBitmap(const stbtt_fontinfo *info, unsigned char *output, int out_w, int out_h, int out_stride, float scale_x, float scale_y, int codepoint)
{
   stbtt_MakeCodepointBitmapSubpixel(info, output, out_w, out_h, out_stride, scale_x, scale_y, 0.0f,0.0f, codepoint);
}







static int stbtt_BakeFontBitmap_internal(unsigned char *data, int offset,  
                                float pixel_height,                     
                                unsigned char *pixels, int pw, int ph,  
                                int first_char, int num_chars,          
                                stbtt_bakedchar *chardata)
{
   float scale;
   int x,y,bottom_y, i;
   stbtt_fontinfo f;
   f.userdata = 0;
   if (!stbtt_InitFont(&f, data, offset))
      return -1;
   memset(pixels, 0, pw*ph); 
   x=y=1;
   bottom_y = 1;

   scale = stbtt_ScaleForPixelHeight(&f, pixel_height);

   for (i=0; i < num_chars; ++i) {
      int advance, lsb, x0,y0,x1,y1,gw,gh;
      int g = stbtt_FindGlyphIndex(&f, first_char + i);
      stbtt_GetGlyphHMetrics(&f, g, &advance, &lsb);
      stbtt_GetGlyphBitmapBox(&f, g, scale,scale, &x0,&y0,&x1,&y1);
      gw = x1-x0;
      gh = y1-y0;
      if (x + gw + 1 >= pw)
         y = bottom_y, x = 1; 
      if (y + gh + 1 >= ph) 
         return -i;
      (void)( (!!(x+gw < pw)) || (_wassert(L"x+gw < pw", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(3273)), 0) );
      (void)( (!!(y+gh < ph)) || (_wassert(L"y+gh < ph", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(3274)), 0) );
      stbtt_MakeGlyphBitmap(&f, pixels+x+y*pw, gw,gh,pw, scale,scale, g);
      chardata[i].x0 = (stbtt_int16) x;
      chardata[i].y0 = (stbtt_int16) y;
      chardata[i].x1 = (stbtt_int16) (x + gw);
      chardata[i].y1 = (stbtt_int16) (y + gh);
      chardata[i].xadvance = scale * advance;
      chardata[i].xoff     = (float) x0;
      chardata[i].yoff     = (float) y0;
      x = x + gw + 1;
      if (y+gh+1 > bottom_y)
         bottom_y = y+gh+1;
   }
   return bottom_y;
}

static void stbtt_GetBakedQuad(stbtt_bakedchar *chardata, int pw, int ph, int char_index, float *xpos, float *ypos, stbtt_aligned_quad *q, int opengl_fillrule)
{
   float d3d_bias = opengl_fillrule ? 0 : -0.5f;
   float ipw = 1.0f / pw, iph = 1.0f / ph;
   stbtt_bakedchar *b = chardata + char_index;
   int round_x = ((int) floor((*xpos + b->xoff) + 0.5f));
   int round_y = ((int) floor((*ypos + b->yoff) + 0.5f));

   q->x0 = round_x + d3d_bias;
   q->y0 = round_y + d3d_bias;
   q->x1 = round_x + b->x1 - b->x0 + d3d_bias;
   q->y1 = round_y + b->y1 - b->y0 + d3d_bias;

   q->s0 = b->x0 * ipw;
   q->t0 = b->y0 * iph;
   q->s1 = b->x1 * ipw;
   q->t1 = b->y1 * iph;

   *xpos += b->xadvance;
}














































































static int stbtt_PackBegin(stbtt_pack_context *spc, unsigned char *pixels, int pw, int ph, int stride_in_bytes, int padding, void *alloc_context)
{
   stbrp_context *context = (stbrp_context *) ((void)(alloc_context), ImGui::MemAlloc(sizeof(*context)));
   int            num_nodes = pw - padding;
   stbrp_node    *nodes   = (stbrp_node    *) ((void)(alloc_context), ImGui::MemAlloc(sizeof(*nodes ) * num_nodes));

   if (context == 0 || nodes == 0) {
      if (context != 0) ((void)(alloc_context), ImGui::MemFree(context));
      if (nodes   != 0) ((void)(alloc_context), ImGui::MemFree(nodes));
      return 0;
   }

   spc->user_allocator_context = alloc_context;
   spc->width = pw;
   spc->height = ph;
   spc->pixels = pixels;
   spc->pack_info = context;
   spc->nodes = nodes;
   spc->padding = padding;
   spc->stride_in_bytes = stride_in_bytes != 0 ? stride_in_bytes : pw;
   spc->h_oversample = 1;
   spc->v_oversample = 1;

   stbrp_init_target(context, pw-padding, ph-padding, nodes, num_nodes);

   if (pixels)
      memset(pixels, 0, pw*ph); 

   return 1;
}

static void stbtt_PackEnd  (stbtt_pack_context *spc)
{
   ((void)(spc->user_allocator_context), ImGui::MemFree(spc->nodes));
   ((void)(spc->user_allocator_context), ImGui::MemFree(spc->pack_info));
}

static void stbtt_PackSetOversampling(stbtt_pack_context *spc, unsigned int h_oversample, unsigned int v_oversample)
{
   (void)( (!!(h_oversample <= 8)) || (_wassert(L"h_oversample <= 8", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(3427)), 0) );
   (void)( (!!(v_oversample <= 8)) || (_wassert(L"v_oversample <= 8", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(3428)), 0) );
   if (h_oversample <= 8)
      spc->h_oversample = h_oversample;
   if (v_oversample <= 8)
      spc->v_oversample = v_oversample;
}



static void stbtt__h_prefilter(unsigned char *pixels, int w, int h, int stride_in_bytes, unsigned int kernel_width)
{
   unsigned char buffer[8];
   int safe_w = w - kernel_width;
   int j;
   memset(buffer, 0, 8); 
   for (j=0; j < h; ++j) {
      int i;
      unsigned int total;
      memset(buffer, 0, kernel_width);

      total = 0;

      
      switch (kernel_width) {
         case 2:
            for (i=0; i <= safe_w; ++i) {
               total += pixels[i] - buffer[i & (8-1)];
               buffer[(i+kernel_width) & (8-1)] = pixels[i];
               pixels[i] = (unsigned char) (total / 2);
            }
            break;
         case 3:
            for (i=0; i <= safe_w; ++i) {
               total += pixels[i] - buffer[i & (8-1)];
               buffer[(i+kernel_width) & (8-1)] = pixels[i];
               pixels[i] = (unsigned char) (total / 3);
            }
            break;
         case 4:
            for (i=0; i <= safe_w; ++i) {
               total += pixels[i] - buffer[i & (8-1)];
               buffer[(i+kernel_width) & (8-1)] = pixels[i];
               pixels[i] = (unsigned char) (total / 4);
            }
            break;
         case 5:
            for (i=0; i <= safe_w; ++i) {
               total += pixels[i] - buffer[i & (8-1)];
               buffer[(i+kernel_width) & (8-1)] = pixels[i];
               pixels[i] = (unsigned char) (total / 5);
            }
            break;
         default:
            for (i=0; i <= safe_w; ++i) {
               total += pixels[i] - buffer[i & (8-1)];
               buffer[(i+kernel_width) & (8-1)] = pixels[i];
               pixels[i] = (unsigned char) (total / kernel_width);
            }
            break;
      }

      for (; i < w; ++i) {
         (void)( (!!(pixels[i] == 0)) || (_wassert(L"pixels[i] == 0", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(3490)), 0) );
         total -= buffer[i & (8-1)];
         pixels[i] = (unsigned char) (total / kernel_width);
      }

      pixels += stride_in_bytes;
   }
}

static void stbtt__v_prefilter(unsigned char *pixels, int w, int h, int stride_in_bytes, unsigned int kernel_width)
{
   unsigned char buffer[8];
   int safe_h = h - kernel_width;
   int j;
   memset(buffer, 0, 8); 
   for (j=0; j < w; ++j) {
      int i;
      unsigned int total;
      memset(buffer, 0, kernel_width);

      total = 0;

      
      switch (kernel_width) {
         case 2:
            for (i=0; i <= safe_h; ++i) {
               total += pixels[i*stride_in_bytes] - buffer[i & (8-1)];
               buffer[(i+kernel_width) & (8-1)] = pixels[i*stride_in_bytes];
               pixels[i*stride_in_bytes] = (unsigned char) (total / 2);
            }
            break;
         case 3:
            for (i=0; i <= safe_h; ++i) {
               total += pixels[i*stride_in_bytes] - buffer[i & (8-1)];
               buffer[(i+kernel_width) & (8-1)] = pixels[i*stride_in_bytes];
               pixels[i*stride_in_bytes] = (unsigned char) (total / 3);
            }
            break;
         case 4:
            for (i=0; i <= safe_h; ++i) {
               total += pixels[i*stride_in_bytes] - buffer[i & (8-1)];
               buffer[(i+kernel_width) & (8-1)] = pixels[i*stride_in_bytes];
               pixels[i*stride_in_bytes] = (unsigned char) (total / 4);
            }
            break;
         case 5:
            for (i=0; i <= safe_h; ++i) {
               total += pixels[i*stride_in_bytes] - buffer[i & (8-1)];
               buffer[(i+kernel_width) & (8-1)] = pixels[i*stride_in_bytes];
               pixels[i*stride_in_bytes] = (unsigned char) (total / 5);
            }
            break;
         default:
            for (i=0; i <= safe_h; ++i) {
               total += pixels[i*stride_in_bytes] - buffer[i & (8-1)];
               buffer[(i+kernel_width) & (8-1)] = pixels[i*stride_in_bytes];
               pixels[i*stride_in_bytes] = (unsigned char) (total / kernel_width);
            }
            break;
      }

      for (; i < h; ++i) {
         (void)( (!!(pixels[i*stride_in_bytes] == 0)) || (_wassert(L"pixels[i*stride_in_bytes] == 0", L"c:\\biblioteki\\imgui-sfml\\stb_truetype.h", (unsigned)(3552)), 0) );
         total -= buffer[i & (8-1)];
         pixels[i*stride_in_bytes] = (unsigned char) (total / kernel_width);
      }

      pixels += 1;
   }
}

static float stbtt__oversample_shift(int oversample)
{
   if (!oversample)
      return 0.0f;

   
   
   
   
   return (float)-(oversample - 1) / (2.0f * (float)oversample);
}


static int stbtt_PackFontRangesGatherRects(stbtt_pack_context *spc, const stbtt_fontinfo *info, stbtt_pack_range *ranges, int num_ranges, stbrp_rect *rects)
{
   int i,j,k;

   k=0;
   for (i=0; i < num_ranges; ++i) {
      float fh = ranges[i].font_size;
      float scale = fh > 0 ? stbtt_ScaleForPixelHeight(info, fh) : stbtt_ScaleForMappingEmToPixels(info, -fh);
      ranges[i].h_oversample = (unsigned char) spc->h_oversample;
      ranges[i].v_oversample = (unsigned char) spc->v_oversample;
      for (j=0; j < ranges[i].num_chars; ++j) {
         int x0,y0,x1,y1;
         int codepoint = ranges[i].array_of_unicode_codepoints == 0 ? ranges[i].first_unicode_codepoint_in_range + j : ranges[i].array_of_unicode_codepoints[j];
         int glyph = stbtt_FindGlyphIndex(info, codepoint);
         stbtt_GetGlyphBitmapBoxSubpixel(info,glyph,
                                         scale * spc->h_oversample,
                                         scale * spc->v_oversample,
                                         0,0,
                                         &x0,&y0,&x1,&y1);
         rects[k].w = (stbrp_coord) (x1-x0 + spc->padding + spc->h_oversample-1);
         rects[k].h = (stbrp_coord) (y1-y0 + spc->padding + spc->v_oversample-1);
         ++k;
      }
   }

   return k;
}


static int stbtt_PackFontRangesRenderIntoRects(stbtt_pack_context *spc, const stbtt_fontinfo *info, stbtt_pack_range *ranges, int num_ranges, stbrp_rect *rects)
{
   int i,j,k, return_value = 1;

   
   int old_h_over = spc->h_oversample;
   int old_v_over = spc->v_oversample;

   k = 0;
   for (i=0; i < num_ranges; ++i) {
      float fh = ranges[i].font_size;
      float scale = fh > 0 ? stbtt_ScaleForPixelHeight(info, fh) : stbtt_ScaleForMappingEmToPixels(info, -fh);
      float recip_h,recip_v,sub_x,sub_y;
      spc->h_oversample = ranges[i].h_oversample;
      spc->v_oversample = ranges[i].v_oversample;
      recip_h = 1.0f / spc->h_oversample;
      recip_v = 1.0f / spc->v_oversample;
      sub_x = stbtt__oversample_shift(spc->h_oversample);
      sub_y = stbtt__oversample_shift(spc->v_oversample);
      for (j=0; j < ranges[i].num_chars; ++j) {
         stbrp_rect *r = &rects[k];
         if (r->was_packed) {
            stbtt_packedchar *bc = &ranges[i].chardata_for_range[j];
            int advance, lsb, x0,y0,x1,y1;
            int codepoint = ranges[i].array_of_unicode_codepoints == 0 ? ranges[i].first_unicode_codepoint_in_range + j : ranges[i].array_of_unicode_codepoints[j];
            int glyph = stbtt_FindGlyphIndex(info, codepoint);
            stbrp_coord pad = (stbrp_coord) spc->padding;

            
            r->x += pad;
            r->y += pad;
            r->w -= pad;
            r->h -= pad;
            stbtt_GetGlyphHMetrics(info, glyph, &advance, &lsb);
            stbtt_GetGlyphBitmapBox(info, glyph,
                                    scale * spc->h_oversample,
                                    scale * spc->v_oversample,
                                    &x0,&y0,&x1,&y1);
            stbtt_MakeGlyphBitmapSubpixel(info,
                                          spc->pixels + r->x + r->y*spc->stride_in_bytes,
                                          r->w - spc->h_oversample+1,
                                          r->h - spc->v_oversample+1,
                                          spc->stride_in_bytes,
                                          scale * spc->h_oversample,
                                          scale * spc->v_oversample,
                                          0,0,
                                          glyph);

            if (spc->h_oversample > 1)
               stbtt__h_prefilter(spc->pixels + r->x + r->y*spc->stride_in_bytes,
                                  r->w, r->h, spc->stride_in_bytes,
                                  spc->h_oversample);

            if (spc->v_oversample > 1)
               stbtt__v_prefilter(spc->pixels + r->x + r->y*spc->stride_in_bytes,
                                  r->w, r->h, spc->stride_in_bytes,
                                  spc->v_oversample);

            bc->x0       = (stbtt_int16)  r->x;
            bc->y0       = (stbtt_int16)  r->y;
            bc->x1       = (stbtt_int16) (r->x + r->w);
            bc->y1       = (stbtt_int16) (r->y + r->h);
            bc->xadvance =                scale * advance;
            bc->xoff     =       (float)  x0 * recip_h + sub_x;
            bc->yoff     =       (float)  y0 * recip_v + sub_y;
            bc->xoff2    =                (x0 + r->w) * recip_h + sub_x;
            bc->yoff2    =                (y0 + r->h) * recip_v + sub_y;
         } else {
            return_value = 0; 
         }

         ++k;
      }
   }

   
   spc->h_oversample = old_h_over;
   spc->v_oversample = old_v_over;

   return return_value;
}

static void stbtt_PackFontRangesPackRects(stbtt_pack_context *spc, stbrp_rect *rects, int num_rects)
{
   stbrp_pack_rects((stbrp_context *) spc->pack_info, rects, num_rects);
}

static int stbtt_PackFontRanges(stbtt_pack_context *spc, unsigned char *fontdata, int font_index, stbtt_pack_range *ranges, int num_ranges)
{
   stbtt_fontinfo info;
   int i,j,n, return_value = 1;
   
   stbrp_rect    *rects;

   
   for (i=0; i < num_ranges; ++i)
      for (j=0; j < ranges[i].num_chars; ++j)
         ranges[i].chardata_for_range[j].x0 =
         ranges[i].chardata_for_range[j].y0 =
         ranges[i].chardata_for_range[j].x1 =
         ranges[i].chardata_for_range[j].y1 = 0;

   n = 0;
   for (i=0; i < num_ranges; ++i)
      n += ranges[i].num_chars;
         
   rects = (stbrp_rect *) ((void)(spc->user_allocator_context), ImGui::MemAlloc(sizeof(*rects) * n));
   if (rects == 0)
      return 0;

   info.userdata = spc->user_allocator_context;
   stbtt_InitFont(&info, fontdata, stbtt_GetFontOffsetForIndex(fontdata,font_index));

   n = stbtt_PackFontRangesGatherRects(spc, &info, ranges, num_ranges, rects);

   stbtt_PackFontRangesPackRects(spc, rects, n);
  
   return_value = stbtt_PackFontRangesRenderIntoRects(spc, &info, ranges, num_ranges, rects);

   ((void)(spc->user_allocator_context), ImGui::MemFree(rects));
   return return_value;
}

static int stbtt_PackFontRange(stbtt_pack_context *spc, unsigned char *fontdata, int font_index, float font_size,
            int first_unicode_codepoint_in_range, int num_chars_in_range, stbtt_packedchar *chardata_for_range)
{
   stbtt_pack_range range;
   range.first_unicode_codepoint_in_range = first_unicode_codepoint_in_range;
   range.array_of_unicode_codepoints = 0;
   range.num_chars                   = num_chars_in_range;
   range.chardata_for_range          = chardata_for_range;
   range.font_size                   = font_size;
   return stbtt_PackFontRanges(spc, fontdata, font_index, &range, 1);
}

static void stbtt_GetPackedQuad(stbtt_packedchar *chardata, int pw, int ph, int char_index, float *xpos, float *ypos, stbtt_aligned_quad *q, int align_to_integer)
{
   float ipw = 1.0f / pw, iph = 1.0f / ph;
   stbtt_packedchar *b = chardata + char_index;

   if (align_to_integer) {
      float x = (float) ((int) floor((*xpos + b->xoff) + 0.5f));
      float y = (float) ((int) floor((*ypos + b->yoff) + 0.5f));
      q->x0 = x;
      q->y0 = y;
      q->x1 = x + b->xoff2 - b->xoff;
      q->y1 = y + b->yoff2 - b->yoff;
   } else {
      q->x0 = *xpos + b->xoff;
      q->y0 = *ypos + b->yoff;
      q->x1 = *xpos + b->xoff2;
      q->y1 = *ypos + b->yoff2;
   }

   q->s0 = b->x0 * ipw;
   q->t0 = b->y0 * iph;
   q->s1 = b->x1 * ipw;
   q->t1 = b->y1 * iph;

   *xpos += b->xadvance;
}








static stbtt_int32 stbtt__CompareUTF8toUTF16_bigendian_prefix(stbtt_uint8 *s1, stbtt_int32 len1, stbtt_uint8 *s2, stbtt_int32 len2) 
{
   stbtt_int32 i=0;

   
   while (len2) {
      stbtt_uint16 ch = s2[0]*256 + s2[1];
      if (ch < 0x80) {
         if (i >= len1) return -1;
         if (s1[i++] != ch) return -1;
      } else if (ch < 0x800) {
         if (i+1 >= len1) return -1;
         if (s1[i++] != 0xc0 + (ch >> 6)) return -1;
         if (s1[i++] != 0x80 + (ch & 0x3f)) return -1;
      } else if (ch >= 0xd800 && ch < 0xdc00) {
         stbtt_uint32 c;
         stbtt_uint16 ch2 = s2[2]*256 + s2[3];
         if (i+3 >= len1) return -1;
         c = ((ch - 0xd800) << 10) + (ch2 - 0xdc00) + 0x10000;
         if (s1[i++] != 0xf0 + (c >> 18)) return -1;
         if (s1[i++] != 0x80 + ((c >> 12) & 0x3f)) return -1;
         if (s1[i++] != 0x80 + ((c >>  6) & 0x3f)) return -1;
         if (s1[i++] != 0x80 + ((c      ) & 0x3f)) return -1;
         s2 += 2; 
         len2 -= 2;
      } else if (ch >= 0xdc00 && ch < 0xe000) {
         return -1;
      } else {
         if (i+2 >= len1) return -1;
         if (s1[i++] != 0xe0 + (ch >> 12)) return -1;
         if (s1[i++] != 0x80 + ((ch >> 6) & 0x3f)) return -1;
         if (s1[i++] != 0x80 + ((ch     ) & 0x3f)) return -1;
      }
      s2 += 2;
      len2 -= 2;
   }
   return i;
}

static int stbtt_CompareUTF8toUTF16_bigendian_internal(char *s1, int len1, char *s2, int len2) 
{
   return len1 == stbtt__CompareUTF8toUTF16_bigendian_prefix((stbtt_uint8*) s1, len1, (stbtt_uint8*) s2, len2);
}



static const char *stbtt_GetFontNameString(const stbtt_fontinfo *font, int *length, int platformID, int encodingID, int languageID, int nameID)
{
   stbtt_int32 i,count,stringOffset;
   stbtt_uint8 *fc = font->data;
   stbtt_uint32 offset = font->fontstart;
   stbtt_uint32 nm = stbtt__find_table(fc, offset, "name");
   if (!nm) return 0;

   count = ttUSHORT(fc+nm+2);
   stringOffset = nm + ttUSHORT(fc+nm+4);
   for (i=0; i < count; ++i) {
      stbtt_uint32 loc = nm + 6 + 12 * i;
      if (platformID == ttUSHORT(fc+loc+0) && encodingID == ttUSHORT(fc+loc+2)
          && languageID == ttUSHORT(fc+loc+4) && nameID == ttUSHORT(fc+loc+6)) {
         *length = ttUSHORT(fc+loc+8);
         return (const char *) (fc+stringOffset+ttUSHORT(fc+loc+10));
      }
   }
   return 0;
}

static int stbtt__matchpair(stbtt_uint8 *fc, stbtt_uint32 nm, stbtt_uint8 *name, stbtt_int32 nlen, stbtt_int32 target_id, stbtt_int32 next_id)
{
   stbtt_int32 i;
   stbtt_int32 count = ttUSHORT(fc+nm+2);
   stbtt_int32 stringOffset = nm + ttUSHORT(fc+nm+4);

   for (i=0; i < count; ++i) {
      stbtt_uint32 loc = nm + 6 + 12 * i;
      stbtt_int32 id = ttUSHORT(fc+loc+6);
      if (id == target_id) {
         
         stbtt_int32 platform = ttUSHORT(fc+loc+0), encoding = ttUSHORT(fc+loc+2), language = ttUSHORT(fc+loc+4);

         
         if (platform == 0 || (platform == 3 && encoding == 1) || (platform == 3 && encoding == 10)) {
            stbtt_int32 slen = ttUSHORT(fc+loc+8);
            stbtt_int32 off = ttUSHORT(fc+loc+10);

            
            stbtt_int32 matchlen = stbtt__CompareUTF8toUTF16_bigendian_prefix(name, nlen, fc+stringOffset+off,slen);
            if (matchlen >= 0) {
               
               if (i+1 < count && ttUSHORT(fc+loc+12+6) == next_id && ttUSHORT(fc+loc+12) == platform && ttUSHORT(fc+loc+12+2) == encoding && ttUSHORT(fc+loc+12+4) == language) {
                  slen = ttUSHORT(fc+loc+12+8);
                  off = ttUSHORT(fc+loc+12+10);
                  if (slen == 0) {
                     if (matchlen == nlen)
                        return 1;
                  } else if (matchlen < nlen && name[matchlen] == ' ') {
                     ++matchlen;
                     if (stbtt_CompareUTF8toUTF16_bigendian_internal((char*) (name+matchlen), nlen-matchlen, (char*)(fc+stringOffset+off),slen))
                        return 1;
                  }
               } else {
                  
                  if (matchlen == nlen)
                     return 1;
               }
            }
         }

         
      }
   }
   return 0;
}

static int stbtt__matches(stbtt_uint8 *fc, stbtt_uint32 offset, stbtt_uint8 *name, stbtt_int32 flags)
{
   stbtt_int32 nlen = (stbtt_int32) strlen((char *) name);
   stbtt_uint32 nm,hd;
   if (!stbtt__isfont(fc+offset)) return 0;

   
   if (flags) {
      hd = stbtt__find_table(fc, offset, "head");
      if ((ttUSHORT(fc+hd+44) & 7) != (flags & 7)) return 0;
   }

   nm = stbtt__find_table(fc, offset, "name");
   if (!nm) return 0;

   if (flags) {
      
      if (stbtt__matchpair(fc, nm, name, nlen, 16, -1))  return 1;
      if (stbtt__matchpair(fc, nm, name, nlen,  1, -1))  return 1;
      if (stbtt__matchpair(fc, nm, name, nlen,  3, -1))  return 1;
   } else {
      if (stbtt__matchpair(fc, nm, name, nlen, 16, 17))  return 1;
      if (stbtt__matchpair(fc, nm, name, nlen,  1,  2))  return 1;
      if (stbtt__matchpair(fc, nm, name, nlen,  3, -1))  return 1;
   }

   return 0;
}

static int stbtt_FindMatchingFont_internal(unsigned char *font_collection, char *name_utf8, stbtt_int32 flags)
{
   stbtt_int32 i;
   for (i=0;;++i) {
      stbtt_int32 off = stbtt_GetFontOffsetForIndex(font_collection, i);
      if (off < 0) return off;
      if (stbtt__matches((stbtt_uint8 *) font_collection, off, (stbtt_uint8*) name_utf8, flags))
         return off;
   }
}




#line 3930 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"

static int stbtt_BakeFontBitmap(const unsigned char *data, int offset,
                                float pixel_height, unsigned char *pixels, int pw, int ph,
                                int first_char, int num_chars, stbtt_bakedchar *chardata)
{
   return stbtt_BakeFontBitmap_internal((unsigned char *) data, offset, pixel_height, pixels, pw, ph, first_char, num_chars, chardata);
}

static int stbtt_GetFontOffsetForIndex(const unsigned char *data, int index)
{
   return stbtt_GetFontOffsetForIndex_internal((unsigned char *) data, index);   
}

static int stbtt_GetNumberOfFonts(const unsigned char *data)
{
   return stbtt_GetNumberOfFonts_internal((unsigned char *) data);
}

static int stbtt_InitFont(stbtt_fontinfo *info, const unsigned char *data, int offset)
{
   return stbtt_InitFont_internal(info, (unsigned char *) data, offset);
}

static int stbtt_FindMatchingFont(const unsigned char *fontdata, const char *name, int flags)
{
   return stbtt_FindMatchingFont_internal((unsigned char *) fontdata, (char *) name, flags);
}

static int stbtt_CompareUTF8toUTF16_bigendian(const char *s1, int len1, const char *s2, int len2)
{
   return stbtt_CompareUTF8toUTF16_bigendian_internal((char *) s1, len1, (char *) s2, len2);
}



#line 3966 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"

#line 3968 "c:\\biblioteki\\imgui-sfml\\stb_truetype.h"



















































#line 99 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"










#pragma warning (pop)
#line 111 "c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp"










static const ImVec4 GNullClipRect(-8192.0f, -8192.0f, +8192.0f, +8192.0f); 

void ImDrawList::Clear()
{
    CmdBuffer.resize(0);
    IdxBuffer.resize(0);
    VtxBuffer.resize(0);
    _VtxCurrentIdx = 0;
    _VtxWritePtr = 0;
    _IdxWritePtr = 0;
    _ClipRectStack.resize(0);
    _TextureIdStack.resize(0);
    _Path.resize(0);
    _ChannelsCurrent = 0;
    _ChannelsCount = 1;
    
}

void ImDrawList::ClearFreeMemory()
{
    CmdBuffer.clear();
    IdxBuffer.clear();
    VtxBuffer.clear();
    _VtxCurrentIdx = 0;
    _VtxWritePtr = 0;
    _IdxWritePtr = 0;
    _ClipRectStack.clear();
    _TextureIdStack.clear();
    _Path.clear();
    _ChannelsCurrent = 0;
    _ChannelsCount = 1;
    for (int i = 0; i < _Channels.Size; i++)
    {
        if (i == 0) memset(&_Channels[0], 0, sizeof(_Channels[0]));  
        _Channels[i].CmdBuffer.clear();
        _Channels[i].IdxBuffer.clear();
    }
    _Channels.clear();
}





void ImDrawList::AddDrawCmd()
{
    ImDrawCmd draw_cmd;
    draw_cmd.ClipRect = (_ClipRectStack.Size ? _ClipRectStack.Data[_ClipRectStack.Size-1] : GNullClipRect);
    draw_cmd.TextureId = (_TextureIdStack.Size ? _TextureIdStack.Data[_TextureIdStack.Size-1] : 0);

    (void)( (!!(draw_cmd.ClipRect.x <= draw_cmd.ClipRect.z && draw_cmd.ClipRect.y <= draw_cmd.ClipRect.w)) || (_wassert(L"draw_cmd.ClipRect.x <= draw_cmd.ClipRect.z && draw_cmd.ClipRect.y <= draw_cmd.ClipRect.w", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(171)), 0) );
    CmdBuffer.push_back(draw_cmd);
}

void ImDrawList::AddCallback(ImDrawCallback callback, void* callback_data)
{
    ImDrawCmd* current_cmd = CmdBuffer.Size ? &CmdBuffer.back() : 0;
    if (!current_cmd || current_cmd->ElemCount != 0 || current_cmd->UserCallback != 0)
    {
        AddDrawCmd();
        current_cmd = &CmdBuffer.back();
    }
    current_cmd->UserCallback = callback;
    current_cmd->UserCallbackData = callback_data;

    AddDrawCmd(); 
}



void ImDrawList::UpdateClipRect()
{
    
    const ImVec4 curr_clip_rect = (_ClipRectStack.Size ? _ClipRectStack.Data[_ClipRectStack.Size-1] : GNullClipRect);
    ImDrawCmd* curr_cmd = CmdBuffer.Size > 0 ? &CmdBuffer.Data[CmdBuffer.Size-1] : 0;
    if (!curr_cmd || (curr_cmd->ElemCount != 0 && memcmp(&curr_cmd->ClipRect, &curr_clip_rect, sizeof(ImVec4)) != 0) || curr_cmd->UserCallback != 0)
    {
        AddDrawCmd();
        return;
    }

    
    ImDrawCmd* prev_cmd = CmdBuffer.Size > 1 ? curr_cmd - 1 : 0;
    if (curr_cmd->ElemCount == 0 && prev_cmd && memcmp(&prev_cmd->ClipRect, &curr_clip_rect, sizeof(ImVec4)) == 0 && prev_cmd->TextureId == (_TextureIdStack.Size ? _TextureIdStack.Data[_TextureIdStack.Size-1] : 0) && prev_cmd->UserCallback == 0)
        CmdBuffer.pop_back();
    else
        curr_cmd->ClipRect = curr_clip_rect;
}

void ImDrawList::UpdateTextureID()
{
    
    const ImTextureID curr_texture_id = (_TextureIdStack.Size ? _TextureIdStack.Data[_TextureIdStack.Size-1] : 0);
    ImDrawCmd* curr_cmd = CmdBuffer.Size ? &CmdBuffer.back() : 0;
    if (!curr_cmd || (curr_cmd->ElemCount != 0 && curr_cmd->TextureId != curr_texture_id) || curr_cmd->UserCallback != 0)
    {
        AddDrawCmd();
        return;
    }

    
    ImDrawCmd* prev_cmd = CmdBuffer.Size > 1 ? curr_cmd - 1 : 0;
    if (prev_cmd && prev_cmd->TextureId == curr_texture_id && memcmp(&prev_cmd->ClipRect, &(_ClipRectStack.Size ? _ClipRectStack.Data[_ClipRectStack.Size-1] : GNullClipRect), sizeof(ImVec4)) == 0 && prev_cmd->UserCallback == 0)
        CmdBuffer.pop_back();
    else
        curr_cmd->TextureId = curr_texture_id;
}





void ImDrawList::PushClipRect(ImVec2 cr_min, ImVec2 cr_max, bool intersect_with_current_clip_rect)
{
    ImVec4 cr(cr_min.x, cr_min.y, cr_max.x, cr_max.y);
    if (intersect_with_current_clip_rect && _ClipRectStack.Size)
    {
        ImVec4 current = _ClipRectStack.Data[_ClipRectStack.Size-1];
        if (cr.x < current.x) cr.x = current.x;
        if (cr.y < current.y) cr.y = current.y;
        if (cr.z > current.z) cr.z = current.z;
        if (cr.w > current.w) cr.w = current.w;
    }
    cr.z = ImMax(cr.x, cr.z);
    cr.w = ImMax(cr.y, cr.w);

    _ClipRectStack.push_back(cr);
    UpdateClipRect();
}

void ImDrawList::PushClipRectFullScreen()
{
    PushClipRect(ImVec2(GNullClipRect.x, GNullClipRect.y), ImVec2(GNullClipRect.z, GNullClipRect.w));
    
}

void ImDrawList::PopClipRect()
{
    (void)( (!!(_ClipRectStack.Size > 0)) || (_wassert(L"_ClipRectStack.Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(259)), 0) );
    _ClipRectStack.pop_back();
    UpdateClipRect();
}

void ImDrawList::PushTextureID(const ImTextureID& texture_id)
{
    _TextureIdStack.push_back(texture_id);
    UpdateTextureID();
}

void ImDrawList::PopTextureID()
{
    (void)( (!!(_TextureIdStack.Size > 0)) || (_wassert(L"_TextureIdStack.Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(272)), 0) );
    _TextureIdStack.pop_back();
    UpdateTextureID();
}

void ImDrawList::ChannelsSplit(int channels_count)
{
    (void)( (!!(_ChannelsCurrent == 0 && _ChannelsCount == 1)) || (_wassert(L"_ChannelsCurrent == 0 && _ChannelsCount == 1", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(279)), 0) );
    int old_channels_count = _Channels.Size;
    if (old_channels_count < channels_count)
        _Channels.resize(channels_count);
    _ChannelsCount = channels_count;

    
    
    
    memset(&_Channels[0], 0, sizeof(ImDrawChannel));
    for (int i = 1; i < channels_count; i++)
    {
        if (i >= old_channels_count)
        {
            new(ImPlacementNewDummy(), &_Channels[i]) ImDrawChannel();
        }
        else
        {
            _Channels[i].CmdBuffer.resize(0);
            _Channels[i].IdxBuffer.resize(0);
        }
        if (_Channels[i].CmdBuffer.Size == 0)
        {
            ImDrawCmd draw_cmd;
            draw_cmd.ClipRect = _ClipRectStack.back();
            draw_cmd.TextureId = _TextureIdStack.back();
            _Channels[i].CmdBuffer.push_back(draw_cmd);
        }
    }
}

void ImDrawList::ChannelsMerge()
{
    
    if (_ChannelsCount <= 1)
        return;

    ChannelsSetCurrent(0);
    if (CmdBuffer.Size && CmdBuffer.back().ElemCount == 0)
        CmdBuffer.pop_back();

    int new_cmd_buffer_count = 0, new_idx_buffer_count = 0;
    for (int i = 1; i < _ChannelsCount; i++)
    {
        ImDrawChannel& ch = _Channels[i];
        if (ch.CmdBuffer.Size && ch.CmdBuffer.back().ElemCount == 0)
            ch.CmdBuffer.pop_back();
        new_cmd_buffer_count += ch.CmdBuffer.Size;
        new_idx_buffer_count += ch.IdxBuffer.Size;
    }
    CmdBuffer.resize(CmdBuffer.Size + new_cmd_buffer_count);
    IdxBuffer.resize(IdxBuffer.Size + new_idx_buffer_count);

    ImDrawCmd* cmd_write = CmdBuffer.Data + CmdBuffer.Size - new_cmd_buffer_count;
    _IdxWritePtr = IdxBuffer.Data + IdxBuffer.Size - new_idx_buffer_count;
    for (int i = 1; i < _ChannelsCount; i++)
    {
        ImDrawChannel& ch = _Channels[i];
        if (int sz = ch.CmdBuffer.Size) { memcpy(cmd_write, ch.CmdBuffer.Data, sz * sizeof(ImDrawCmd)); cmd_write += sz; }
        if (int sz = ch.IdxBuffer.Size) { memcpy(_IdxWritePtr, ch.IdxBuffer.Data, sz * sizeof(ImDrawIdx)); _IdxWritePtr += sz; }
    }
    AddDrawCmd();
    _ChannelsCount = 1;
}

void ImDrawList::ChannelsSetCurrent(int idx)
{
    (void)( (!!(idx < _ChannelsCount)) || (_wassert(L"idx < _ChannelsCount", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(346)), 0) );
    if (_ChannelsCurrent == idx) return;
    memcpy(&_Channels.Data[_ChannelsCurrent].CmdBuffer, &CmdBuffer, sizeof(CmdBuffer)); 
    memcpy(&_Channels.Data[_ChannelsCurrent].IdxBuffer, &IdxBuffer, sizeof(IdxBuffer));
    _ChannelsCurrent = idx;
    memcpy(&CmdBuffer, &_Channels.Data[_ChannelsCurrent].CmdBuffer, sizeof(CmdBuffer));
    memcpy(&IdxBuffer, &_Channels.Data[_ChannelsCurrent].IdxBuffer, sizeof(IdxBuffer));
    _IdxWritePtr = IdxBuffer.Data + IdxBuffer.Size;
}


void ImDrawList::PrimReserve(int idx_count, int vtx_count)
{
    ImDrawCmd& draw_cmd = CmdBuffer.Data[CmdBuffer.Size-1];
    draw_cmd.ElemCount += idx_count;

    int vtx_buffer_size = VtxBuffer.Size;
    VtxBuffer.resize(vtx_buffer_size + vtx_count);
    _VtxWritePtr = VtxBuffer.Data + vtx_buffer_size;

    int idx_buffer_size = IdxBuffer.Size;
    IdxBuffer.resize(idx_buffer_size + idx_count);
    _IdxWritePtr = IdxBuffer.Data + idx_buffer_size;
}


void ImDrawList::PrimRect(const ImVec2& a, const ImVec2& c, ImU32 col)
{
    ImVec2 b(c.x, a.y), d(a.x, c.y), uv(GImGui->FontTexUvWhitePixel);
    ImDrawIdx idx = (ImDrawIdx)_VtxCurrentIdx;
    _IdxWritePtr[0] = idx; _IdxWritePtr[1] = (ImDrawIdx)(idx+1); _IdxWritePtr[2] = (ImDrawIdx)(idx+2);
    _IdxWritePtr[3] = idx; _IdxWritePtr[4] = (ImDrawIdx)(idx+2); _IdxWritePtr[5] = (ImDrawIdx)(idx+3);
    _VtxWritePtr[0].pos = a; _VtxWritePtr[0].uv = uv; _VtxWritePtr[0].col = col;
    _VtxWritePtr[1].pos = b; _VtxWritePtr[1].uv = uv; _VtxWritePtr[1].col = col;
    _VtxWritePtr[2].pos = c; _VtxWritePtr[2].uv = uv; _VtxWritePtr[2].col = col;
    _VtxWritePtr[3].pos = d; _VtxWritePtr[3].uv = uv; _VtxWritePtr[3].col = col;
    _VtxWritePtr += 4;
    _VtxCurrentIdx += 4;
    _IdxWritePtr += 6;
}

void ImDrawList::PrimRectUV(const ImVec2& a, const ImVec2& c, const ImVec2& uv_a, const ImVec2& uv_c, ImU32 col)
{
    ImVec2 b(c.x, a.y), d(a.x, c.y), uv_b(uv_c.x, uv_a.y), uv_d(uv_a.x, uv_c.y);
    ImDrawIdx idx = (ImDrawIdx)_VtxCurrentIdx;
    _IdxWritePtr[0] = idx; _IdxWritePtr[1] = (ImDrawIdx)(idx+1); _IdxWritePtr[2] = (ImDrawIdx)(idx+2);
    _IdxWritePtr[3] = idx; _IdxWritePtr[4] = (ImDrawIdx)(idx+2); _IdxWritePtr[5] = (ImDrawIdx)(idx+3);
    _VtxWritePtr[0].pos = a; _VtxWritePtr[0].uv = uv_a; _VtxWritePtr[0].col = col;
    _VtxWritePtr[1].pos = b; _VtxWritePtr[1].uv = uv_b; _VtxWritePtr[1].col = col;
    _VtxWritePtr[2].pos = c; _VtxWritePtr[2].uv = uv_c; _VtxWritePtr[2].col = col;
    _VtxWritePtr[3].pos = d; _VtxWritePtr[3].uv = uv_d; _VtxWritePtr[3].col = col;
    _VtxWritePtr += 4;
    _VtxCurrentIdx += 4;
    _IdxWritePtr += 6;
}

void ImDrawList::PrimQuadUV(const ImVec2& a, const ImVec2& b, const ImVec2& c, const ImVec2& d, const ImVec2& uv_a, const ImVec2& uv_b, const ImVec2& uv_c, const ImVec2& uv_d, ImU32 col)
{
    ImDrawIdx idx = (ImDrawIdx)_VtxCurrentIdx;
    _IdxWritePtr[0] = idx; _IdxWritePtr[1] = (ImDrawIdx)(idx+1); _IdxWritePtr[2] = (ImDrawIdx)(idx+2);
    _IdxWritePtr[3] = idx; _IdxWritePtr[4] = (ImDrawIdx)(idx+2); _IdxWritePtr[5] = (ImDrawIdx)(idx+3);
    _VtxWritePtr[0].pos = a; _VtxWritePtr[0].uv = uv_a; _VtxWritePtr[0].col = col;
    _VtxWritePtr[1].pos = b; _VtxWritePtr[1].uv = uv_b; _VtxWritePtr[1].col = col;
    _VtxWritePtr[2].pos = c; _VtxWritePtr[2].uv = uv_c; _VtxWritePtr[2].col = col;
    _VtxWritePtr[3].pos = d; _VtxWritePtr[3].uv = uv_d; _VtxWritePtr[3].col = col;
    _VtxWritePtr += 4;
    _VtxCurrentIdx += 4;
    _IdxWritePtr += 6;
}


void ImDrawList::AddPolyline(const ImVec2* points, const int points_count, ImU32 col, bool closed, float thickness, bool anti_aliased)
{
    if (points_count < 2)
        return;

    const ImVec2 uv = GImGui->FontTexUvWhitePixel;
    anti_aliased &= GImGui->Style.AntiAliasedLines;
    

    int count = points_count;
    if (!closed)
        count = points_count-1;

    const bool thick_line = thickness > 1.0f;
    if (anti_aliased)
    {
        
        const float AA_SIZE = 1.0f;
        const ImU32 col_trans = col & (((ImU32)(0)<<24) | ((ImU32)(255)<<16) | ((ImU32)(255)<<8) | ((ImU32)(255)<<0));

        const int idx_count = thick_line ? count*18 : count*12;
        const int vtx_count = thick_line ? points_count*4 : points_count*3;
        PrimReserve(idx_count, vtx_count);

        
        ImVec2* temp_normals = (ImVec2*)_alloca(points_count * (thick_line ? 5 : 3) * sizeof(ImVec2));
        ImVec2* temp_points = temp_normals + points_count;

        for (int i1 = 0; i1 < count; i1++)
        {
            const int i2 = (i1+1) == points_count ? 0 : i1+1;
            ImVec2 diff = points[i2] - points[i1];
            diff *= ImInvLength(diff, 1.0f);
            temp_normals[i1].x = diff.y;
            temp_normals[i1].y = -diff.x;
        }
        if (!closed)
            temp_normals[points_count-1] = temp_normals[points_count-2];

        if (!thick_line)
        {
            if (!closed)
            {
                temp_points[0] = points[0] + temp_normals[0] * AA_SIZE;
                temp_points[1] = points[0] - temp_normals[0] * AA_SIZE;
                temp_points[(points_count-1)*2+0] = points[points_count-1] + temp_normals[points_count-1] * AA_SIZE;
                temp_points[(points_count-1)*2+1] = points[points_count-1] - temp_normals[points_count-1] * AA_SIZE;
            }

            
            unsigned int idx1 = _VtxCurrentIdx;
            for (int i1 = 0; i1 < count; i1++)
            {
                const int i2 = (i1+1) == points_count ? 0 : i1+1;
                unsigned int idx2 = (i1+1) == points_count ? _VtxCurrentIdx : idx1+3;

                
                ImVec2 dm = (temp_normals[i1] + temp_normals[i2]) * 0.5f;
                float dmr2 = dm.x*dm.x + dm.y*dm.y;
                if (dmr2 > 0.000001f)
                {
                    float scale = 1.0f / dmr2;
                    if (scale > 100.0f) scale = 100.0f;
                    dm *= scale;
                }
                dm *= AA_SIZE;
                temp_points[i2*2+0] = points[i2] + dm;
                temp_points[i2*2+1] = points[i2] - dm;

                
                _IdxWritePtr[0] = (ImDrawIdx)(idx2+0); _IdxWritePtr[1] = (ImDrawIdx)(idx1+0); _IdxWritePtr[2] = (ImDrawIdx)(idx1+2);
                _IdxWritePtr[3] = (ImDrawIdx)(idx1+2); _IdxWritePtr[4] = (ImDrawIdx)(idx2+2); _IdxWritePtr[5] = (ImDrawIdx)(idx2+0);
                _IdxWritePtr[6] = (ImDrawIdx)(idx2+1); _IdxWritePtr[7] = (ImDrawIdx)(idx1+1); _IdxWritePtr[8] = (ImDrawIdx)(idx1+0);
                _IdxWritePtr[9] = (ImDrawIdx)(idx1+0); _IdxWritePtr[10]= (ImDrawIdx)(idx2+0); _IdxWritePtr[11]= (ImDrawIdx)(idx2+1);
                _IdxWritePtr += 12;

                idx1 = idx2;
            }

            
            for (int i = 0; i < points_count; i++)
            {
                _VtxWritePtr[0].pos = points[i];          _VtxWritePtr[0].uv = uv; _VtxWritePtr[0].col = col;
                _VtxWritePtr[1].pos = temp_points[i*2+0]; _VtxWritePtr[1].uv = uv; _VtxWritePtr[1].col = col_trans;
                _VtxWritePtr[2].pos = temp_points[i*2+1]; _VtxWritePtr[2].uv = uv; _VtxWritePtr[2].col = col_trans;
                _VtxWritePtr += 3;
            }
        }
        else
        {
            const float half_inner_thickness = (thickness - AA_SIZE) * 0.5f;
            if (!closed)
            {
                temp_points[0] = points[0] + temp_normals[0] * (half_inner_thickness + AA_SIZE);
                temp_points[1] = points[0] + temp_normals[0] * (half_inner_thickness);
                temp_points[2] = points[0] - temp_normals[0] * (half_inner_thickness);
                temp_points[3] = points[0] - temp_normals[0] * (half_inner_thickness + AA_SIZE);
                temp_points[(points_count-1)*4+0] = points[points_count-1] + temp_normals[points_count-1] * (half_inner_thickness + AA_SIZE);
                temp_points[(points_count-1)*4+1] = points[points_count-1] + temp_normals[points_count-1] * (half_inner_thickness);
                temp_points[(points_count-1)*4+2] = points[points_count-1] - temp_normals[points_count-1] * (half_inner_thickness);
                temp_points[(points_count-1)*4+3] = points[points_count-1] - temp_normals[points_count-1] * (half_inner_thickness + AA_SIZE);
            }

            
            unsigned int idx1 = _VtxCurrentIdx;
            for (int i1 = 0; i1 < count; i1++)
            {
                const int i2 = (i1+1) == points_count ? 0 : i1+1;
                unsigned int idx2 = (i1+1) == points_count ? _VtxCurrentIdx : idx1+4;

                
                ImVec2 dm = (temp_normals[i1] + temp_normals[i2]) * 0.5f;
                float dmr2 = dm.x*dm.x + dm.y*dm.y;
                if (dmr2 > 0.000001f)
                {
                    float scale = 1.0f / dmr2;
                    if (scale > 100.0f) scale = 100.0f;
                    dm *= scale;
                }
                ImVec2 dm_out = dm * (half_inner_thickness + AA_SIZE);
                ImVec2 dm_in = dm * half_inner_thickness;
                temp_points[i2*4+0] = points[i2] + dm_out;
                temp_points[i2*4+1] = points[i2] + dm_in;
                temp_points[i2*4+2] = points[i2] - dm_in;
                temp_points[i2*4+3] = points[i2] - dm_out;

                
                _IdxWritePtr[0]  = (ImDrawIdx)(idx2+1); _IdxWritePtr[1]  = (ImDrawIdx)(idx1+1); _IdxWritePtr[2]  = (ImDrawIdx)(idx1+2);
                _IdxWritePtr[3]  = (ImDrawIdx)(idx1+2); _IdxWritePtr[4]  = (ImDrawIdx)(idx2+2); _IdxWritePtr[5]  = (ImDrawIdx)(idx2+1);
                _IdxWritePtr[6]  = (ImDrawIdx)(idx2+1); _IdxWritePtr[7]  = (ImDrawIdx)(idx1+1); _IdxWritePtr[8]  = (ImDrawIdx)(idx1+0);
                _IdxWritePtr[9]  = (ImDrawIdx)(idx1+0); _IdxWritePtr[10] = (ImDrawIdx)(idx2+0); _IdxWritePtr[11] = (ImDrawIdx)(idx2+1);
                _IdxWritePtr[12] = (ImDrawIdx)(idx2+2); _IdxWritePtr[13] = (ImDrawIdx)(idx1+2); _IdxWritePtr[14] = (ImDrawIdx)(idx1+3);
                _IdxWritePtr[15] = (ImDrawIdx)(idx1+3); _IdxWritePtr[16] = (ImDrawIdx)(idx2+3); _IdxWritePtr[17] = (ImDrawIdx)(idx2+2);
                _IdxWritePtr += 18;

                idx1 = idx2;
            }

            
            for (int i = 0; i < points_count; i++)
            {
                _VtxWritePtr[0].pos = temp_points[i*4+0]; _VtxWritePtr[0].uv = uv; _VtxWritePtr[0].col = col_trans;
                _VtxWritePtr[1].pos = temp_points[i*4+1]; _VtxWritePtr[1].uv = uv; _VtxWritePtr[1].col = col;
                _VtxWritePtr[2].pos = temp_points[i*4+2]; _VtxWritePtr[2].uv = uv; _VtxWritePtr[2].col = col;
                _VtxWritePtr[3].pos = temp_points[i*4+3]; _VtxWritePtr[3].uv = uv; _VtxWritePtr[3].col = col_trans;
                _VtxWritePtr += 4;
            }
        }
        _VtxCurrentIdx += (ImDrawIdx)vtx_count;
    }
    else
    {
        
        const int idx_count = count*6;
        const int vtx_count = count*4;      
        PrimReserve(idx_count, vtx_count);

        for (int i1 = 0; i1 < count; i1++)
        {
            const int i2 = (i1+1) == points_count ? 0 : i1+1;
            const ImVec2& p1 = points[i1];
            const ImVec2& p2 = points[i2];
            ImVec2 diff = p2 - p1;
            diff *= ImInvLength(diff, 1.0f);

            const float dx = diff.x * (thickness * 0.5f);
            const float dy = diff.y * (thickness * 0.5f);
            _VtxWritePtr[0].pos.x = p1.x + dy; _VtxWritePtr[0].pos.y = p1.y - dx; _VtxWritePtr[0].uv = uv; _VtxWritePtr[0].col = col;
            _VtxWritePtr[1].pos.x = p2.x + dy; _VtxWritePtr[1].pos.y = p2.y - dx; _VtxWritePtr[1].uv = uv; _VtxWritePtr[1].col = col;
            _VtxWritePtr[2].pos.x = p2.x - dy; _VtxWritePtr[2].pos.y = p2.y + dx; _VtxWritePtr[2].uv = uv; _VtxWritePtr[2].col = col;
            _VtxWritePtr[3].pos.x = p1.x - dy; _VtxWritePtr[3].pos.y = p1.y + dx; _VtxWritePtr[3].uv = uv; _VtxWritePtr[3].col = col;
            _VtxWritePtr += 4;

            _IdxWritePtr[0] = (ImDrawIdx)(_VtxCurrentIdx); _IdxWritePtr[1] = (ImDrawIdx)(_VtxCurrentIdx+1); _IdxWritePtr[2] = (ImDrawIdx)(_VtxCurrentIdx+2);
            _IdxWritePtr[3] = (ImDrawIdx)(_VtxCurrentIdx); _IdxWritePtr[4] = (ImDrawIdx)(_VtxCurrentIdx+2); _IdxWritePtr[5] = (ImDrawIdx)(_VtxCurrentIdx+3);
            _IdxWritePtr += 6;
            _VtxCurrentIdx += 4;
        }
    }
}

void ImDrawList::AddConvexPolyFilled(const ImVec2* points, const int points_count, ImU32 col, bool anti_aliased)
{
    const ImVec2 uv = GImGui->FontTexUvWhitePixel;
    anti_aliased &= GImGui->Style.AntiAliasedShapes;
    

    if (anti_aliased)
    {
        
        const float AA_SIZE = 1.0f;
        const ImU32 col_trans = col & (((ImU32)(0)<<24) | ((ImU32)(255)<<16) | ((ImU32)(255)<<8) | ((ImU32)(255)<<0));
        const int idx_count = (points_count-2)*3 + points_count*6;
        const int vtx_count = (points_count*2);
        PrimReserve(idx_count, vtx_count);

        
        unsigned int vtx_inner_idx = _VtxCurrentIdx;
        unsigned int vtx_outer_idx = _VtxCurrentIdx+1;
        for (int i = 2; i < points_count; i++)
        {
            _IdxWritePtr[0] = (ImDrawIdx)(vtx_inner_idx); _IdxWritePtr[1] = (ImDrawIdx)(vtx_inner_idx+((i-1)<<1)); _IdxWritePtr[2] = (ImDrawIdx)(vtx_inner_idx+(i<<1));
            _IdxWritePtr += 3;
        }

        
        ImVec2* temp_normals = (ImVec2*)_alloca(points_count * sizeof(ImVec2));
        for (int i0 = points_count-1, i1 = 0; i1 < points_count; i0 = i1++)
        {
            const ImVec2& p0 = points[i0];
            const ImVec2& p1 = points[i1];
            ImVec2 diff = p1 - p0;
            diff *= ImInvLength(diff, 1.0f);
            temp_normals[i0].x = diff.y;
            temp_normals[i0].y = -diff.x;
        }

        for (int i0 = points_count-1, i1 = 0; i1 < points_count; i0 = i1++)
        {
            
            const ImVec2& n0 = temp_normals[i0];
            const ImVec2& n1 = temp_normals[i1];
            ImVec2 dm = (n0 + n1) * 0.5f;
            float dmr2 = dm.x*dm.x + dm.y*dm.y;
            if (dmr2 > 0.000001f)
            {
                float scale = 1.0f / dmr2;
                if (scale > 100.0f) scale = 100.0f;
                dm *= scale;
            }
            dm *= AA_SIZE * 0.5f;

            
            _VtxWritePtr[0].pos = (points[i1] - dm); _VtxWritePtr[0].uv = uv; _VtxWritePtr[0].col = col;        
            _VtxWritePtr[1].pos = (points[i1] + dm); _VtxWritePtr[1].uv = uv; _VtxWritePtr[1].col = col_trans;  
            _VtxWritePtr += 2;

            
            _IdxWritePtr[0] = (ImDrawIdx)(vtx_inner_idx+(i1<<1)); _IdxWritePtr[1] = (ImDrawIdx)(vtx_inner_idx+(i0<<1)); _IdxWritePtr[2] = (ImDrawIdx)(vtx_outer_idx+(i0<<1));
            _IdxWritePtr[3] = (ImDrawIdx)(vtx_outer_idx+(i0<<1)); _IdxWritePtr[4] = (ImDrawIdx)(vtx_outer_idx+(i1<<1)); _IdxWritePtr[5] = (ImDrawIdx)(vtx_inner_idx+(i1<<1));
            _IdxWritePtr += 6;
        }
        _VtxCurrentIdx += (ImDrawIdx)vtx_count;
    }
    else
    {
        
        const int idx_count = (points_count-2)*3;
        const int vtx_count = points_count;
        PrimReserve(idx_count, vtx_count);
        for (int i = 0; i < vtx_count; i++)
        {
            _VtxWritePtr[0].pos = points[i]; _VtxWritePtr[0].uv = uv; _VtxWritePtr[0].col = col;
            _VtxWritePtr++;
        }
        for (int i = 2; i < points_count; i++)
        {
            _IdxWritePtr[0] = (ImDrawIdx)(_VtxCurrentIdx); _IdxWritePtr[1] = (ImDrawIdx)(_VtxCurrentIdx+i-1); _IdxWritePtr[2] = (ImDrawIdx)(_VtxCurrentIdx+i);
            _IdxWritePtr += 3;
        }
        _VtxCurrentIdx += (ImDrawIdx)vtx_count;
    }
}

void ImDrawList::PathArcToFast(const ImVec2& centre, float radius, int amin, int amax)
{
    static ImVec2 circle_vtx[12];
    static bool circle_vtx_builds = false;
    const int circle_vtx_count = ((int)(sizeof(circle_vtx)/sizeof(*circle_vtx)));
    if (!circle_vtx_builds)
    {
        for (int i = 0; i < circle_vtx_count; i++)
        {
            const float a = ((float)i / (float)circle_vtx_count) * 2*3.14159265358979323846f;
            circle_vtx[i].x = cosf(a);
            circle_vtx[i].y = sinf(a);
        }
        circle_vtx_builds = true;
    }

    if (amin > amax) return;
    if (radius == 0.0f)
    {
        _Path.push_back(centre);
    }
    else
    {
        _Path.reserve(_Path.Size + (amax - amin + 1));
        for (int a = amin; a <= amax; a++)
        {
            const ImVec2& c = circle_vtx[a % circle_vtx_count];
            _Path.push_back(ImVec2(centre.x + c.x * radius, centre.y + c.y * radius));
        }
    }
}

void ImDrawList::PathArcTo(const ImVec2& centre, float radius, float amin, float amax, int num_segments)
{
    if (radius == 0.0f)
        _Path.push_back(centre);
    _Path.reserve(_Path.Size + (num_segments + 1));
    for (int i = 0; i <= num_segments; i++)
    {
        const float a = amin + ((float)i / (float)num_segments) * (amax - amin);
        _Path.push_back(ImVec2(centre.x + cosf(a) * radius, centre.y + sinf(a) * radius));
    }
}

static void PathBezierToCasteljau(ImVector<ImVec2>* path, float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4, float tess_tol, int level)
{
    float dx = x4 - x1;
    float dy = y4 - y1;
    float d2 = ((x2 - x4) * dy - (y2 - y4) * dx);
    float d3 = ((x3 - x4) * dy - (y3 - y4) * dx);
    d2 = (d2 >= 0) ? d2 : -d2;
    d3 = (d3 >= 0) ? d3 : -d3;
    if ((d2+d3) * (d2+d3) < tess_tol * (dx*dx + dy*dy))
    {
        path->push_back(ImVec2(x4, y4));
    }
    else if (level < 10)
    {
        float x12 = (x1+x2)*0.5f,       y12 = (y1+y2)*0.5f;
        float x23 = (x2+x3)*0.5f,       y23 = (y2+y3)*0.5f;
        float x34 = (x3+x4)*0.5f,       y34 = (y3+y4)*0.5f;
        float x123 = (x12+x23)*0.5f,    y123 = (y12+y23)*0.5f;
        float x234 = (x23+x34)*0.5f,    y234 = (y23+y34)*0.5f;
        float x1234 = (x123+x234)*0.5f, y1234 = (y123+y234)*0.5f;

        PathBezierToCasteljau(path, x1,y1,        x12,y12,    x123,y123,  x1234,y1234, tess_tol, level+1);
        PathBezierToCasteljau(path, x1234,y1234,  x234,y234,  x34,y34,    x4,y4,       tess_tol, level+1);
    }
}

void ImDrawList::PathBezierCurveTo(const ImVec2& p2, const ImVec2& p3, const ImVec2& p4, int num_segments)
{
    ImVec2 p1 = _Path.back();
    if (num_segments == 0)
    {
        
        PathBezierToCasteljau(&_Path, p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, p4.x, p4.y, GImGui->Style.CurveTessellationTol, 0);
    }
    else
    {
        float t_step = 1.0f / (float)num_segments;
        for (int i_step = 1; i_step <= num_segments; i_step++)
        {
            float t = t_step * i_step;
            float u = 1.0f - t;
            float w1 = u*u*u;
            float w2 = 3*u*u*t;
            float w3 = 3*u*t*t;
            float w4 = t*t*t;
            _Path.push_back(ImVec2(w1*p1.x + w2*p2.x + w3*p3.x + w4*p4.x, w1*p1.y + w2*p2.y + w3*p3.y + w4*p4.y));
        }
    }
}

void ImDrawList::PathRect(const ImVec2& a, const ImVec2& b, float rounding, int rounding_corners)
{
    float r = rounding;
    r = ImMin(r, fabsf(b.x-a.x) * ( ((rounding_corners&(1|2))==(1|2)) || ((rounding_corners&(4|8))==(4|8)) ? 0.5f : 1.0f ) - 1.0f);
    r = ImMin(r, fabsf(b.y-a.y) * ( ((rounding_corners&(1|8))==(1|8)) || ((rounding_corners&(2|4))==(2|4)) ? 0.5f : 1.0f ) - 1.0f);

    if (r <= 0.0f || rounding_corners == 0)
    {
        PathLineTo(a);
        PathLineTo(ImVec2(b.x,a.y));
        PathLineTo(b);
        PathLineTo(ImVec2(a.x,b.y));
    }
    else
    {
        const float r0 = (rounding_corners & 1) ? r : 0.0f;
        const float r1 = (rounding_corners & 2) ? r : 0.0f;
        const float r2 = (rounding_corners & 4) ? r : 0.0f;
        const float r3 = (rounding_corners & 8) ? r : 0.0f;
        PathArcToFast(ImVec2(a.x+r0,a.y+r0), r0, 6, 9);
        PathArcToFast(ImVec2(b.x-r1,a.y+r1), r1, 9, 12);
        PathArcToFast(ImVec2(b.x-r2,b.y-r2), r2, 0, 3);
        PathArcToFast(ImVec2(a.x+r3,b.y-r3), r3, 3, 6);
    }
}

void ImDrawList::AddLine(const ImVec2& a, const ImVec2& b, ImU32 col, float thickness)
{
    if ((col & 0xFF000000) == 0)
        return;
    PathLineTo(a + ImVec2(0.5f,0.5f));
    PathLineTo(b + ImVec2(0.5f,0.5f));
    PathStroke(col, false, thickness);
}


void ImDrawList::AddRect(const ImVec2& a, const ImVec2& b, ImU32 col, float rounding, int rounding_corners_flags, float thickness)
{
    if ((col & 0xFF000000) == 0)
        return;
    PathRect(a + ImVec2(0.5f,0.5f), b - ImVec2(0.5f,0.5f), rounding, rounding_corners_flags);
    PathStroke(col, true, thickness);
}

void ImDrawList::AddRectFilled(const ImVec2& a, const ImVec2& b, ImU32 col, float rounding, int rounding_corners_flags)
{
    if ((col & 0xFF000000) == 0)
        return;
    if (rounding > 0.0f)
    {
        PathRect(a, b, rounding, rounding_corners_flags);
        PathFillConvex(col);
    }
    else
    {
        PrimReserve(6, 4);
        PrimRect(a, b, col);
    }
}

void ImDrawList::AddRectFilledMultiColor(const ImVec2& a, const ImVec2& c, ImU32 col_upr_left, ImU32 col_upr_right, ImU32 col_bot_right, ImU32 col_bot_left)
{
    if (((col_upr_left | col_upr_right | col_bot_right | col_bot_left) & 0xFF000000) == 0)
        return;

    const ImVec2 uv = GImGui->FontTexUvWhitePixel;
    PrimReserve(6, 4);
    PrimWriteIdx((ImDrawIdx)(_VtxCurrentIdx)); PrimWriteIdx((ImDrawIdx)(_VtxCurrentIdx+1)); PrimWriteIdx((ImDrawIdx)(_VtxCurrentIdx+2));
    PrimWriteIdx((ImDrawIdx)(_VtxCurrentIdx)); PrimWriteIdx((ImDrawIdx)(_VtxCurrentIdx+2)); PrimWriteIdx((ImDrawIdx)(_VtxCurrentIdx+3));
    PrimWriteVtx(a, uv, col_upr_left);
    PrimWriteVtx(ImVec2(c.x, a.y), uv, col_upr_right);
    PrimWriteVtx(c, uv, col_bot_right);
    PrimWriteVtx(ImVec2(a.x, c.y), uv, col_bot_left);
}

void ImDrawList::AddQuad(const ImVec2& a, const ImVec2& b, const ImVec2& c, const ImVec2& d, ImU32 col, float thickness)
{
    if ((col & 0xFF000000) == 0)
        return;

    PathLineTo(a);
    PathLineTo(b);
    PathLineTo(c);
    PathLineTo(d);
    PathStroke(col, true, thickness);
}

void ImDrawList::AddQuadFilled(const ImVec2& a, const ImVec2& b, const ImVec2& c, const ImVec2& d, ImU32 col)
{
    if ((col & 0xFF000000) == 0)
        return;

    PathLineTo(a);
    PathLineTo(b);
    PathLineTo(c);
    PathLineTo(d);
    PathFillConvex(col);
}

void ImDrawList::AddTriangle(const ImVec2& a, const ImVec2& b, const ImVec2& c, ImU32 col, float thickness)
{
    if ((col & 0xFF000000) == 0)
        return;

    PathLineTo(a);
    PathLineTo(b);
    PathLineTo(c);
    PathStroke(col, true, thickness);
}

void ImDrawList::AddTriangleFilled(const ImVec2& a, const ImVec2& b, const ImVec2& c, ImU32 col)
{
    if ((col & 0xFF000000) == 0)
        return;

    PathLineTo(a);
    PathLineTo(b);
    PathLineTo(c);
    PathFillConvex(col);
}

void ImDrawList::AddCircle(const ImVec2& centre, float radius, ImU32 col, int num_segments, float thickness)
{
    if ((col & 0xFF000000) == 0)
        return;

    const float a_max = 3.14159265358979323846f*2.0f * ((float)num_segments - 1.0f) / (float)num_segments;
    PathArcTo(centre, radius-0.5f, 0.0f, a_max, num_segments);
    PathStroke(col, true, thickness);
}

void ImDrawList::AddCircleFilled(const ImVec2& centre, float radius, ImU32 col, int num_segments)
{
    if ((col & 0xFF000000) == 0)
        return;

    const float a_max = 3.14159265358979323846f*2.0f * ((float)num_segments - 1.0f) / (float)num_segments;
    PathArcTo(centre, radius, 0.0f, a_max, num_segments);
    PathFillConvex(col);
}

void ImDrawList::AddBezierCurve(const ImVec2& pos0, const ImVec2& cp0, const ImVec2& cp1, const ImVec2& pos1, ImU32 col, float thickness, int num_segments)
{
    if ((col & 0xFF000000) == 0)
        return;

    PathLineTo(pos0);
    PathBezierCurveTo(cp0, cp1, pos1, num_segments);
    PathStroke(col, false, thickness);
}

void ImDrawList::AddText(const ImFont* font, float font_size, const ImVec2& pos, ImU32 col, const char* text_begin, const char* text_end, float wrap_width, const ImVec4* cpu_fine_clip_rect)
{
    if ((col & 0xFF000000) == 0)
        return;

    if (text_end == 0)
        text_end = text_begin + strlen(text_begin);
    if (text_begin == text_end)
        return;

    
    
    if (font == 0)
        font = GImGui->Font;
    if (font_size == 0.0f)
        font_size = GImGui->FontSize;

    (void)( (!!(font->ContainerAtlas->TexID == _TextureIdStack.back())) || (_wassert(L"font->ContainerAtlas->TexID == _TextureIdStack.back()", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(943)), 0) );  

    ImVec4 clip_rect = _ClipRectStack.back();
    if (cpu_fine_clip_rect)
    {
        clip_rect.x = ImMax(clip_rect.x, cpu_fine_clip_rect->x);
        clip_rect.y = ImMax(clip_rect.y, cpu_fine_clip_rect->y);
        clip_rect.z = ImMin(clip_rect.z, cpu_fine_clip_rect->z);
        clip_rect.w = ImMin(clip_rect.w, cpu_fine_clip_rect->w);
    }
    font->RenderText(this, font_size, pos, col, clip_rect, text_begin, text_end, wrap_width, cpu_fine_clip_rect != 0);
}

void ImDrawList::AddText(const ImVec2& pos, ImU32 col, const char* text_begin, const char* text_end)
{
    AddText(GImGui->Font, GImGui->FontSize, pos, col, text_begin, text_end);
}

void ImDrawList::AddImage(ImTextureID user_texture_id, const ImVec2& a, const ImVec2& b, const ImVec2& uv_a, const ImVec2& uv_b, ImU32 col)
{
    if ((col & 0xFF000000) == 0)
        return;

    
    const bool push_texture_id = _TextureIdStack.empty() || user_texture_id != _TextureIdStack.back();
    if (push_texture_id)
        PushTextureID(user_texture_id);

    PrimReserve(6, 4);
    PrimRectUV(a, b, uv_a, uv_b, col);

    if (push_texture_id)
        PopTextureID();
}

void ImDrawList::AddImageQuad(ImTextureID user_texture_id, const ImVec2& a, const ImVec2& b, const ImVec2& c, const ImVec2& d, const ImVec2& uv_a, const ImVec2& uv_b, const ImVec2& uv_c, const ImVec2& uv_d, ImU32 col)
{
    if ((col & 0xFF000000) == 0)
        return;

    const bool push_texture_id = _TextureIdStack.empty() || user_texture_id != _TextureIdStack.back();
    if (push_texture_id)
        PushTextureID(user_texture_id);

    PrimReserve(6, 4);
    PrimQuadUV(a, b, c, d, uv_a, uv_b, uv_c, uv_d, col);

    if (push_texture_id)
        PopTextureID();
}






void ImDrawData::DeIndexAllBuffers()
{
    ImVector<ImDrawVert> new_vtx_buffer;
    TotalVtxCount = TotalIdxCount = 0;
    for (int i = 0; i < CmdListsCount; i++)
    {
        ImDrawList* cmd_list = CmdLists[i];
        if (cmd_list->IdxBuffer.empty())
            continue;
        new_vtx_buffer.resize(cmd_list->IdxBuffer.Size);
        for (int j = 0; j < cmd_list->IdxBuffer.Size; j++)
            new_vtx_buffer[j] = cmd_list->VtxBuffer[cmd_list->IdxBuffer[j]];
        cmd_list->VtxBuffer.swap(new_vtx_buffer);
        cmd_list->IdxBuffer.resize(0);
        TotalVtxCount += cmd_list->VtxBuffer.Size;
    }
}


void ImDrawData::ScaleClipRects(const ImVec2& scale)
{
    for (int i = 0; i < CmdListsCount; i++)
    {
        ImDrawList* cmd_list = CmdLists[i];
        for (int cmd_i = 0; cmd_i < cmd_list->CmdBuffer.Size; cmd_i++)
        {
            ImDrawCmd* cmd = &cmd_list->CmdBuffer[cmd_i];
            cmd->ClipRect = ImVec4(cmd->ClipRect.x * scale.x, cmd->ClipRect.y * scale.y, cmd->ClipRect.z * scale.x, cmd->ClipRect.w * scale.y);
        }
    }
}





ImFontConfig::ImFontConfig()
{
    FontData = 0;
    FontDataSize = 0;
    FontDataOwnedByAtlas = true;
    FontNo = 0;
    SizePixels = 0.0f;
    OversampleH = 3;
    OversampleV = 1;
    PixelSnapH = false;
    GlyphExtraSpacing = ImVec2(0.0f, 0.0f);
    GlyphRanges = 0;
    MergeMode = false;
    MergeGlyphCenterV = false;
    DstFont = 0;
    memset(Name, 0, sizeof(Name));
}

ImFontAtlas::ImFontAtlas()
{
    TexID = 0;
    TexPixelsAlpha8 = 0;
    TexPixelsRGBA32 = 0;
    TexWidth = TexHeight = TexDesiredWidth = 0;
    TexUvWhitePixel = ImVec2(0, 0);
}

ImFontAtlas::~ImFontAtlas()
{
    Clear();
}

void    ImFontAtlas::ClearInputData()
{
    for (int i = 0; i < ConfigData.Size; i++)
        if (ConfigData[i].FontData && ConfigData[i].FontDataOwnedByAtlas)
        {
            ImGui::MemFree(ConfigData[i].FontData);
            ConfigData[i].FontData = 0;
        }

    
    for (int i = 0; i < Fonts.Size; i++)
        if (Fonts[i]->ConfigData >= ConfigData.Data && Fonts[i]->ConfigData < ConfigData.Data + ConfigData.Size)
        {
            Fonts[i]->ConfigData = 0;
            Fonts[i]->ConfigDataCount = 0;
        }
    ConfigData.clear();
}

void    ImFontAtlas::ClearTexData()
{
    if (TexPixelsAlpha8)
        ImGui::MemFree(TexPixelsAlpha8);
    if (TexPixelsRGBA32)
        ImGui::MemFree(TexPixelsRGBA32);
    TexPixelsAlpha8 = 0;
    TexPixelsRGBA32 = 0;
}

void    ImFontAtlas::ClearFonts()
{
    for (int i = 0; i < Fonts.Size; i++)
    {
        Fonts[i]->~ImFont();
        ImGui::MemFree(Fonts[i]);
    }
    Fonts.clear();
}

void    ImFontAtlas::Clear()
{
    ClearInputData();
    ClearTexData();
    ClearFonts();
}

void    ImFontAtlas::GetTexDataAsAlpha8(unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel)
{
    
    if (TexPixelsAlpha8 == 0)
    {
        if (ConfigData.empty())
            AddFontDefault();
        Build();
    }

    *out_pixels = TexPixelsAlpha8;
    if (out_width) *out_width = TexWidth;
    if (out_height) *out_height = TexHeight;
    if (out_bytes_per_pixel) *out_bytes_per_pixel = 1;
}

void    ImFontAtlas::GetTexDataAsRGBA32(unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel)
{
    
    
    if (!TexPixelsRGBA32)
    {
        unsigned char* pixels;
        GetTexDataAsAlpha8(&pixels, 0, 0);
        TexPixelsRGBA32 = (unsigned int*)ImGui::MemAlloc((size_t)(TexWidth * TexHeight * 4));
        const unsigned char* src = pixels;
        unsigned int* dst = TexPixelsRGBA32;
        for (int n = TexWidth * TexHeight; n > 0; n--)
            *dst++ = (((ImU32)((unsigned int)(*src++))<<24) | ((ImU32)(255)<<16) | ((ImU32)(255)<<8) | ((ImU32)(255)<<0));
    }

    *out_pixels = (unsigned char*)TexPixelsRGBA32;
    if (out_width) *out_width = TexWidth;
    if (out_height) *out_height = TexHeight;
    if (out_bytes_per_pixel) *out_bytes_per_pixel = 4;
}

ImFont* ImFontAtlas::AddFont(const ImFontConfig* font_cfg)
{
    (void)( (!!(font_cfg->FontData != 0 && font_cfg->FontDataSize > 0)) || (_wassert(L"font_cfg->FontData != 0 && font_cfg->FontDataSize > 0", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1152)), 0) );
    (void)( (!!(font_cfg->SizePixels > 0.0f)) || (_wassert(L"font_cfg->SizePixels > 0.0f", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1153)), 0) );

    
    if (!font_cfg->MergeMode)
    {
        ImFont* font = (ImFont*)ImGui::MemAlloc(sizeof(ImFont));
        new(ImPlacementNewDummy(), font) ImFont();
        Fonts.push_back(font);
    }
    else
    {
        (void)( (!!(!Fonts.empty())) || (_wassert(L"!Fonts.empty()", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1164)), 0) ); 
    }

    ConfigData.push_back(*font_cfg);
    ImFontConfig& new_font_cfg = ConfigData.back();
	if (!new_font_cfg.DstFont)
	    new_font_cfg.DstFont = Fonts.back();
    if (!new_font_cfg.FontDataOwnedByAtlas)
    {
        new_font_cfg.FontData = ImGui::MemAlloc(new_font_cfg.FontDataSize);
        new_font_cfg.FontDataOwnedByAtlas = true;
        memcpy(new_font_cfg.FontData, font_cfg->FontData, (size_t)new_font_cfg.FontDataSize);
    }

    
    ClearTexData();
    return new_font_cfg.DstFont;
}


static unsigned int stb_decompress_length(unsigned char *input);
static unsigned int stb_decompress(unsigned char *output, unsigned char *i, unsigned int length);
static const char*  GetDefaultCompressedFontDataTTFBase85();
static unsigned int Decode85Byte(char c)                                    { return c >= '\\' ? c-36 : c-35; }
static void         Decode85(const unsigned char* src, unsigned char* dst)
{
    while (*src)
    {
        unsigned int tmp = Decode85Byte(src[0]) + 85*(Decode85Byte(src[1]) + 85*(Decode85Byte(src[2]) + 85*(Decode85Byte(src[3]) + 85*Decode85Byte(src[4]))));
        dst[0] = ((tmp >> 0) & 0xFF); dst[1] = ((tmp >> 8) & 0xFF); dst[2] = ((tmp >> 16) & 0xFF); dst[3] = ((tmp >> 24) & 0xFF);   
        src += 5;
        dst += 4;
    }
}


ImFont* ImFontAtlas::AddFontDefault(const ImFontConfig* font_cfg_template)
{
    ImFontConfig font_cfg = font_cfg_template ? *font_cfg_template : ImFontConfig();
    if (!font_cfg_template)
    {
        font_cfg.OversampleH = font_cfg.OversampleV = 1;
        font_cfg.PixelSnapH = true;
    }
    if (font_cfg.Name[0] == '\0') strcpy(font_cfg.Name, "ProggyClean.ttf, 13px");

    const char* ttf_compressed_base85 = GetDefaultCompressedFontDataTTFBase85();
    ImFont* font = AddFontFromMemoryCompressedBase85TTF(ttf_compressed_base85, 13.0f, &font_cfg, GetGlyphRangesDefault());
    return font;
}

ImFont* ImFontAtlas::AddFontFromFileTTF(const char* filename, float size_pixels, const ImFontConfig* font_cfg_template, const ImWchar* glyph_ranges)
{
    int data_size = 0;
    void* data = ImFileLoadToMemory(filename, "rb", &data_size, 0);
    if (!data)
    {
        (void)( (!!(0)) || (_wassert(L"0", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1221)), 0) ); 
        return 0;
    }
    ImFontConfig font_cfg = font_cfg_template ? *font_cfg_template : ImFontConfig();
    if (font_cfg.Name[0] == '\0')
    {
        
        const char* p;
        for (p = filename + strlen(filename); p > filename && p[-1] != '/' && p[-1] != '\\'; p--) {}
        _snprintf(font_cfg.Name, ((int)(sizeof(font_cfg.Name)/sizeof(*font_cfg.Name))), "%s, %.0fpx", p, size_pixels);
    }
    return AddFontFromMemoryTTF(data, data_size, size_pixels, &font_cfg, glyph_ranges);
}


ImFont* ImFontAtlas::AddFontFromMemoryTTF(void* ttf_data, int ttf_size, float size_pixels, const ImFontConfig* font_cfg_template, const ImWchar* glyph_ranges)
{
    ImFontConfig font_cfg = font_cfg_template ? *font_cfg_template : ImFontConfig();
    (void)( (!!(font_cfg.FontData == 0)) || (_wassert(L"font_cfg.FontData == 0", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1239)), 0) );
    font_cfg.FontData = ttf_data;
    font_cfg.FontDataSize = ttf_size;
    font_cfg.SizePixels = size_pixels;
    if (glyph_ranges)
        font_cfg.GlyphRanges = glyph_ranges;
    return AddFont(&font_cfg);
}

ImFont* ImFontAtlas::AddFontFromMemoryCompressedTTF(const void* compressed_ttf_data, int compressed_ttf_size, float size_pixels, const ImFontConfig* font_cfg_template, const ImWchar* glyph_ranges)
{
    const unsigned int buf_decompressed_size = stb_decompress_length((unsigned char*)compressed_ttf_data);
    unsigned char* buf_decompressed_data = (unsigned char *)ImGui::MemAlloc(buf_decompressed_size);
    stb_decompress(buf_decompressed_data, (unsigned char*)compressed_ttf_data, (unsigned int)compressed_ttf_size);

    ImFontConfig font_cfg = font_cfg_template ? *font_cfg_template : ImFontConfig();
    (void)( (!!(font_cfg.FontData == 0)) || (_wassert(L"font_cfg.FontData == 0", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1255)), 0) );
    font_cfg.FontDataOwnedByAtlas = true;
    return AddFontFromMemoryTTF(buf_decompressed_data, (int)buf_decompressed_size, size_pixels, &font_cfg, glyph_ranges);
}

ImFont* ImFontAtlas::AddFontFromMemoryCompressedBase85TTF(const char* compressed_ttf_data_base85, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges)
{
    int compressed_ttf_size = (((int)strlen(compressed_ttf_data_base85) + 4) / 5) * 4;
    void* compressed_ttf = ImGui::MemAlloc((size_t)compressed_ttf_size);
    Decode85((const unsigned char*)compressed_ttf_data_base85, (unsigned char*)compressed_ttf);
    ImFont* font = AddFontFromMemoryCompressedTTF(compressed_ttf, compressed_ttf_size, size_pixels, font_cfg, glyph_ranges);
    ImGui::MemFree(compressed_ttf);
    return font;
}

bool    ImFontAtlas::Build()
{
    (void)( (!!(ConfigData.Size > 0)) || (_wassert(L"ConfigData.Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1272)), 0) );

    TexID = 0;
    TexWidth = TexHeight = 0;
    TexUvWhitePixel = ImVec2(0, 0);
    ClearTexData();

    struct ImFontTempBuildData
    {
        stbtt_fontinfo      FontInfo;
        stbrp_rect*         Rects;
        stbtt_pack_range*   Ranges;
        int                 RangesCount;
    };
    ImFontTempBuildData* tmp_array = (ImFontTempBuildData*)ImGui::MemAlloc((size_t)ConfigData.Size * sizeof(ImFontTempBuildData));

    
    int total_glyph_count = 0;
    int total_glyph_range_count = 0;
    for (int input_i = 0; input_i < ConfigData.Size; input_i++)
    {
        ImFontConfig& cfg = ConfigData[input_i];
        ImFontTempBuildData& tmp = tmp_array[input_i];

        (void)( (!!(cfg.DstFont && (!cfg.DstFont->IsLoaded() || cfg.DstFont->ContainerAtlas == this))) || (_wassert(L"cfg.DstFont && (!cfg.DstFont->IsLoaded() || cfg.DstFont->ContainerAtlas == this)", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1296)), 0) );
        const int font_offset = stbtt_GetFontOffsetForIndex((unsigned char*)cfg.FontData, cfg.FontNo);
        (void)( (!!(font_offset >= 0)) || (_wassert(L"font_offset >= 0", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1298)), 0) );
        if (!stbtt_InitFont(&tmp.FontInfo, (unsigned char*)cfg.FontData, font_offset))
            return false;

        
        if (!cfg.GlyphRanges)
            cfg.GlyphRanges = GetGlyphRangesDefault();
        for (const ImWchar* in_range = cfg.GlyphRanges; in_range[0] && in_range[1]; in_range += 2)
        {
            total_glyph_count += (in_range[1] - in_range[0]) + 1;
            total_glyph_range_count++;
        }
    }

    
    
    TexWidth = (TexDesiredWidth > 0) ? TexDesiredWidth : (total_glyph_count > 4000) ? 4096 : (total_glyph_count > 2000) ? 2048 : (total_glyph_count > 1000) ? 1024 : 512;
    TexHeight = 0;
    const int max_tex_height = 1024*32;
    stbtt_pack_context spc;
    stbtt_PackBegin(&spc, 0, TexWidth, max_tex_height, 0, 1, 0);

    
    ImVector<stbrp_rect> extra_rects;
    RenderCustomTexData(0, &extra_rects);
    stbtt_PackSetOversampling(&spc, 1, 1);
    stbrp_pack_rects((stbrp_context*)spc.pack_info, &extra_rects[0], extra_rects.Size);
    for (int i = 0; i < extra_rects.Size; i++)
        if (extra_rects[i].was_packed)
            TexHeight = ImMax(TexHeight, extra_rects[i].y + extra_rects[i].h);

    
    int buf_packedchars_n = 0, buf_rects_n = 0, buf_ranges_n = 0;
    stbtt_packedchar* buf_packedchars = (stbtt_packedchar*)ImGui::MemAlloc(total_glyph_count * sizeof(stbtt_packedchar));
    stbrp_rect* buf_rects = (stbrp_rect*)ImGui::MemAlloc(total_glyph_count * sizeof(stbrp_rect));
    stbtt_pack_range* buf_ranges = (stbtt_pack_range*)ImGui::MemAlloc(total_glyph_range_count * sizeof(stbtt_pack_range));
    memset(buf_packedchars, 0, total_glyph_count * sizeof(stbtt_packedchar));
    memset(buf_rects, 0, total_glyph_count * sizeof(stbrp_rect));              
    memset(buf_ranges, 0, total_glyph_range_count * sizeof(stbtt_pack_range));

    
    for (int input_i = 0; input_i < ConfigData.Size; input_i++)
    {
        ImFontConfig& cfg = ConfigData[input_i];
        ImFontTempBuildData& tmp = tmp_array[input_i];

        
        int glyph_count = 0;
        int glyph_ranges_count = 0;
        for (const ImWchar* in_range = cfg.GlyphRanges; in_range[0] && in_range[1]; in_range += 2)
        {
            glyph_count += (in_range[1] - in_range[0]) + 1;
            glyph_ranges_count++;
        }
        tmp.Ranges = buf_ranges + buf_ranges_n;
        tmp.RangesCount = glyph_ranges_count;
        buf_ranges_n += glyph_ranges_count;
        for (int i = 0; i < glyph_ranges_count; i++)
        {
            const ImWchar* in_range = &cfg.GlyphRanges[i * 2];
            stbtt_pack_range& range = tmp.Ranges[i];
            range.font_size = cfg.SizePixels;
            range.first_unicode_codepoint_in_range = in_range[0];
            range.num_chars = (in_range[1] - in_range[0]) + 1;
            range.chardata_for_range = buf_packedchars + buf_packedchars_n;
            buf_packedchars_n += range.num_chars;
        }

        
        tmp.Rects = buf_rects + buf_rects_n;
        buf_rects_n += glyph_count;
        stbtt_PackSetOversampling(&spc, cfg.OversampleH, cfg.OversampleV);
        int n = stbtt_PackFontRangesGatherRects(&spc, &tmp.FontInfo, tmp.Ranges, tmp.RangesCount, tmp.Rects);
        stbrp_pack_rects((stbrp_context*)spc.pack_info, tmp.Rects, n);

        
        for (int i = 0; i < n; i++)
            if (tmp.Rects[i].was_packed)
                TexHeight = ImMax(TexHeight, tmp.Rects[i].y + tmp.Rects[i].h);
    }
    (void)( (!!(buf_rects_n == total_glyph_count)) || (_wassert(L"buf_rects_n == total_glyph_count", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1378)), 0) );
    (void)( (!!(buf_packedchars_n == total_glyph_count)) || (_wassert(L"buf_packedchars_n == total_glyph_count", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1379)), 0) );
    (void)( (!!(buf_ranges_n == total_glyph_range_count)) || (_wassert(L"buf_ranges_n == total_glyph_range_count", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1380)), 0) );

    
    TexHeight = ImUpperPowerOfTwo(TexHeight);
    TexPixelsAlpha8 = (unsigned char*)ImGui::MemAlloc(TexWidth * TexHeight);
    memset(TexPixelsAlpha8, 0, TexWidth * TexHeight);
    spc.pixels = TexPixelsAlpha8;
    spc.height = TexHeight;

    
    for (int input_i = 0; input_i < ConfigData.Size; input_i++)
    {
        ImFontConfig& cfg = ConfigData[input_i];
        ImFontTempBuildData& tmp = tmp_array[input_i];
        stbtt_PackSetOversampling(&spc, cfg.OversampleH, cfg.OversampleV);
        stbtt_PackFontRangesRenderIntoRects(&spc, &tmp.FontInfo, tmp.Ranges, tmp.RangesCount, tmp.Rects);
        tmp.Rects = 0;
    }

    
    stbtt_PackEnd(&spc);
    ImGui::MemFree(buf_rects);
    buf_rects = 0;

    
    for (int input_i = 0; input_i < ConfigData.Size; input_i++)
    {
        ImFontConfig& cfg = ConfigData[input_i];
        ImFontTempBuildData& tmp = tmp_array[input_i];
        ImFont* dst_font = cfg.DstFont; 

        float font_scale = stbtt_ScaleForPixelHeight(&tmp.FontInfo, cfg.SizePixels);
        int unscaled_ascent, unscaled_descent, unscaled_line_gap;
        stbtt_GetFontVMetrics(&tmp.FontInfo, &unscaled_ascent, &unscaled_descent, &unscaled_line_gap);

        float ascent = unscaled_ascent * font_scale;
        float descent = unscaled_descent * font_scale;
        if (!cfg.MergeMode)
        {
            dst_font->ContainerAtlas = this;
            dst_font->ConfigData = &cfg;
            dst_font->ConfigDataCount = 0;
            dst_font->FontSize = cfg.SizePixels;
            dst_font->Ascent = ascent;
            dst_font->Descent = descent;
            dst_font->Glyphs.resize(0);
            dst_font->MetricsTotalSurface = 0;
        }
        dst_font->ConfigDataCount++;
        float off_y = (cfg.MergeMode && cfg.MergeGlyphCenterV) ? (ascent - dst_font->Ascent) * 0.5f : 0.0f;

        dst_font->FallbackGlyph = 0; 
        for (int i = 0; i < tmp.RangesCount; i++)
        {
            stbtt_pack_range& range = tmp.Ranges[i];
            for (int char_idx = 0; char_idx < range.num_chars; char_idx += 1)
            {
                const stbtt_packedchar& pc = range.chardata_for_range[char_idx];
                if (!pc.x0 && !pc.x1 && !pc.y0 && !pc.y1)
                    continue;

                const int codepoint = range.first_unicode_codepoint_in_range + char_idx;
                if (cfg.MergeMode && dst_font->FindGlyph((unsigned short)codepoint))
                    continue;

                stbtt_aligned_quad q;
                float dummy_x = 0.0f, dummy_y = 0.0f;
                stbtt_GetPackedQuad(range.chardata_for_range, TexWidth, TexHeight, char_idx, &dummy_x, &dummy_y, &q, 0);

                dst_font->Glyphs.resize(dst_font->Glyphs.Size + 1);
                ImFont::Glyph& glyph = dst_font->Glyphs.back();
                glyph.Codepoint = (ImWchar)codepoint;
                glyph.X0 = q.x0; glyph.Y0 = q.y0; glyph.X1 = q.x1; glyph.Y1 = q.y1;
                glyph.U0 = q.s0; glyph.V0 = q.t0; glyph.U1 = q.s1; glyph.V1 = q.t1;
                glyph.Y0 += (float)(int)(dst_font->Ascent + off_y + 0.5f);
                glyph.Y1 += (float)(int)(dst_font->Ascent + off_y + 0.5f);
                glyph.XAdvance = (pc.xadvance + cfg.GlyphExtraSpacing.x);  
                if (cfg.PixelSnapH)
                    glyph.XAdvance = (float)(int)(glyph.XAdvance + 0.5f);
                dst_font->MetricsTotalSurface += (int)((glyph.U1 - glyph.U0) * TexWidth + 1.99f) * (int)((glyph.V1 - glyph.V0) * TexHeight + 1.99f); 
            }
        }
        cfg.DstFont->BuildLookupTable();
    }

    
    ImGui::MemFree(buf_packedchars);
    ImGui::MemFree(buf_ranges);
    ImGui::MemFree(tmp_array);

    
    RenderCustomTexData(1, &extra_rects);

    return true;
}

void ImFontAtlas::RenderCustomTexData(int pass, void* p_rects)
{
    
    
    const int TEX_DATA_W = 90;
    const int TEX_DATA_H = 27;
    const char texture_data[TEX_DATA_W*TEX_DATA_H+1] =
    {
        "..-         -XXXXXXX-    X    -           X           -XXXXXXX          -          XXXXXXX"
        "..-         -X.....X-   X.X   -          X.X          -X.....X          -          X.....X"
        "---         -XXX.XXX-  X...X  -         X...X         -X....X           -           X....X"
        "X           -  X.X  - X.....X -        X.....X        -X...X            -            X...X"
        "XX          -  X.X  -X.......X-       X.......X       -X..X.X           -           X.X..X"
        "X.X         -  X.X  -XXXX.XXXX-       XXXX.XXXX       -X.X X.X          -          X.X X.X"
        "X..X        -  X.X  -   X.X   -          X.X          -XX   X.X         -         X.X   XX"
        "X...X       -  X.X  -   X.X   -    XX    X.X    XX    -      X.X        -        X.X      "
        "X....X      -  X.X  -   X.X   -   X.X    X.X    X.X   -       X.X       -       X.X       "
        "X.....X     -  X.X  -   X.X   -  X..X    X.X    X..X  -        X.X      -      X.X        "
        "X......X    -  X.X  -   X.X   - X...XXXXXX.XXXXXX...X -         X.X   XX-XX   X.X         "
        "X.......X   -  X.X  -   X.X   -X.....................X-          X.X X.X-X.X X.X          "
        "X........X  -  X.X  -   X.X   - X...XXXXXX.XXXXXX...X -           X.X..X-X..X.X           "
        "X.........X -XXX.XXX-   X.X   -  X..X    X.X    X..X  -            X...X-X...X            "
        "X..........X-X.....X-   X.X   -   X.X    X.X    X.X   -           X....X-X....X           "
        "X......XXXXX-XXXXXXX-   X.X   -    XX    X.X    XX    -          X.....X-X.....X          "
        "X...X..X    ---------   X.X   -          X.X          -          XXXXXXX-XXXXXXX          "
        "X..X X..X   -       -XXXX.XXXX-       XXXX.XXXX       ------------------------------------"
        "X.X  X..X   -       -X.......X-       X.......X       -    XX           XX    -           "
        "XX    X..X  -       - X.....X -        X.....X        -   X.X           X.X   -           "
        "      X..X          -  X...X  -         X...X         -  X..X           X..X  -           "
        "       XX           -   X.X   -          X.X          - X...XXXXXXXXXXXXX...X -           "
        "------------        -    X    -           X           -X.....................X-           "
        "                    ----------------------------------- X...XXXXXXXXXXXXX...X -           "
        "                                                      -  X..X           X..X  -           "
        "                                                      -   X.X           X.X   -           "
        "                                                      -    XX           XX    -           "
    };

    ImVector<stbrp_rect>& rects = *(ImVector<stbrp_rect>*)p_rects;
    if (pass == 0)
    {
        
        stbrp_rect r;
        memset(&r, 0, sizeof(r));
        r.w = (TEX_DATA_W*2)+1;
        r.h = TEX_DATA_H+1;
        rects.push_back(r);
    }
    else if (pass == 1)
    {
        
        const stbrp_rect& r = rects[0];
        for (int y = 0, n = 0; y < TEX_DATA_H; y++)
            for (int x = 0; x < TEX_DATA_W; x++, n++)
            {
                const int offset0 = (int)(r.x + x) + (int)(r.y + y) * TexWidth;
                const int offset1 = offset0 + 1 + TEX_DATA_W;
                TexPixelsAlpha8[offset0] = texture_data[n] == '.' ? 0xFF : 0x00;
                TexPixelsAlpha8[offset1] = texture_data[n] == 'X' ? 0xFF : 0x00;
            }
        const ImVec2 tex_uv_scale(1.0f / TexWidth, 1.0f / TexHeight);
        TexUvWhitePixel = ImVec2((r.x + 0.5f) * tex_uv_scale.x, (r.y + 0.5f) * tex_uv_scale.y);

        
        const ImVec2 cursor_datas[ImGuiMouseCursor_Count_][3] =
        {
            
            { ImVec2(0,3),  ImVec2(12,19), ImVec2( 0, 0) }, 
            { ImVec2(13,0), ImVec2(7,16),  ImVec2( 4, 8) }, 
            { ImVec2(31,0), ImVec2(23,23), ImVec2(11,11) }, 
            { ImVec2(21,0), ImVec2( 9,23), ImVec2( 5,11) }, 
            { ImVec2(55,18),ImVec2(23, 9), ImVec2(11, 5) }, 
            { ImVec2(73,0), ImVec2(17,17), ImVec2( 9, 9) }, 
            { ImVec2(55,0), ImVec2(17,17), ImVec2( 9, 9) }, 
        };

        for (int type = 0; type < ImGuiMouseCursor_Count_; type++)
        {
            ImGuiMouseCursorData& cursor_data = GImGui->MouseCursorData[type];
            ImVec2 pos = cursor_datas[type][0] + ImVec2((float)r.x, (float)r.y);
            const ImVec2 size = cursor_datas[type][1];
            cursor_data.Type = type;
            cursor_data.Size = size;
            cursor_data.HotOffset = cursor_datas[type][2];
            cursor_data.TexUvMin[0] = (pos) * tex_uv_scale;
            cursor_data.TexUvMax[0] = (pos + size) * tex_uv_scale;
            pos.x += TEX_DATA_W+1;
            cursor_data.TexUvMin[1] = (pos) * tex_uv_scale;
            cursor_data.TexUvMax[1] = (pos + size) * tex_uv_scale;
        }
    }
}


const ImWchar*   ImFontAtlas::GetGlyphRangesDefault()
{
    static const ImWchar ranges[] =
    {
        0x0020, 0x00FF, 
        0,
    };
    return &ranges[0];
}

const ImWchar*  ImFontAtlas::GetGlyphRangesKorean()
{
    static const ImWchar ranges[] =
    {
        0x0020, 0x00FF, 
        0x3131, 0x3163, 
        0xAC00, 0xD79D, 
        0,
    };
    return &ranges[0];
}

const ImWchar*  ImFontAtlas::GetGlyphRangesChinese()
{
    static const ImWchar ranges[] =
    {
        0x0020, 0x00FF, 
        0x3000, 0x30FF, 
        0x31F0, 0x31FF, 
        0xFF00, 0xFFEF, 
        0x4e00, 0x9FAF, 
        0,
    };
    return &ranges[0];
}

const ImWchar*  ImFontAtlas::GetGlyphRangesJapanese()
{
    
    
    static const short offsets_from_0x4E00[] =
    {
        -1,0,1,3,0,0,0,0,1,0,5,1,1,0,7,4,6,10,0,1,9,9,7,1,3,19,1,10,7,1,0,1,0,5,1,0,6,4,2,6,0,0,12,6,8,0,3,5,0,1,0,9,0,0,8,1,1,3,4,5,13,0,0,8,2,17,
        4,3,1,1,9,6,0,0,0,2,1,3,2,22,1,9,11,1,13,1,3,12,0,5,9,2,0,6,12,5,3,12,4,1,2,16,1,1,4,6,5,3,0,6,13,15,5,12,8,14,0,0,6,15,3,6,0,18,8,1,6,14,1,
        5,4,12,24,3,13,12,10,24,0,0,0,1,0,1,1,2,9,10,2,2,0,0,3,3,1,0,3,8,0,3,2,4,4,1,6,11,10,14,6,15,3,4,15,1,0,0,5,2,2,0,0,1,6,5,5,6,0,3,6,5,0,0,1,0,
        11,2,2,8,4,7,0,10,0,1,2,17,19,3,0,2,5,0,6,2,4,4,6,1,1,11,2,0,3,1,2,1,2,10,7,6,3,16,0,8,24,0,0,3,1,1,3,0,1,6,0,0,0,2,0,1,5,15,0,1,0,0,2,11,19,
        1,4,19,7,6,5,1,0,0,0,0,5,1,0,1,9,0,0,5,0,2,0,1,0,3,0,11,3,0,2,0,0,0,0,0,9,3,6,4,12,0,14,0,0,29,10,8,0,14,37,13,0,31,16,19,0,8,30,1,20,8,3,48,
        21,1,0,12,0,10,44,34,42,54,11,18,82,0,2,1,2,12,1,0,6,2,17,2,12,7,0,7,17,4,2,6,24,23,8,23,39,2,16,23,1,0,5,1,2,15,14,5,6,2,11,0,8,6,2,2,2,14,
        20,4,15,3,4,11,10,10,2,5,2,1,30,2,1,0,0,22,5,5,0,3,1,5,4,1,0,0,2,2,21,1,5,1,2,16,2,1,3,4,0,8,4,0,0,5,14,11,2,16,1,13,1,7,0,22,15,3,1,22,7,14,
        22,19,11,24,18,46,10,20,64,45,3,2,0,4,5,0,1,4,25,1,0,0,2,10,0,0,0,1,0,1,2,0,0,9,1,2,0,0,0,2,5,2,1,1,5,5,8,1,1,1,5,1,4,9,1,3,0,1,0,1,1,2,0,0,
        2,0,1,8,22,8,1,0,0,0,0,4,2,1,0,9,8,5,0,9,1,30,24,2,6,4,39,0,14,5,16,6,26,179,0,2,1,1,0,0,0,5,2,9,6,0,2,5,16,7,5,1,1,0,2,4,4,7,15,13,14,0,0,
        3,0,1,0,0,0,2,1,6,4,5,1,4,9,0,3,1,8,0,0,10,5,0,43,0,2,6,8,4,0,2,0,0,9,6,0,9,3,1,6,20,14,6,1,4,0,7,2,3,0,2,0,5,0,3,1,0,3,9,7,0,3,4,0,4,9,1,6,0,
        9,0,0,2,3,10,9,28,3,6,2,4,1,2,32,4,1,18,2,0,3,1,5,30,10,0,2,2,2,0,7,9,8,11,10,11,7,2,13,7,5,10,0,3,40,2,0,1,6,12,0,4,5,1,5,11,11,21,4,8,3,7,
        8,8,33,5,23,0,0,19,8,8,2,3,0,6,1,1,1,5,1,27,4,2,5,0,3,5,6,3,1,0,3,1,12,5,3,3,2,0,7,7,2,1,0,4,0,1,1,2,0,10,10,6,2,5,9,7,5,15,15,21,6,11,5,20,
        4,3,5,5,2,5,0,2,1,0,1,7,28,0,9,0,5,12,5,5,18,30,0,12,3,3,21,16,25,32,9,3,14,11,24,5,66,9,1,2,0,5,9,1,5,1,8,0,8,3,3,0,1,15,1,4,8,1,2,7,0,7,2,
        8,3,7,5,3,7,10,2,1,0,0,2,25,0,6,4,0,10,0,4,2,4,1,12,5,38,4,0,4,1,10,5,9,4,0,14,4,2,5,18,20,21,1,3,0,5,0,7,0,3,7,1,3,1,1,8,1,0,0,0,3,2,5,2,11,
        6,0,13,1,3,9,1,12,0,16,6,2,1,0,2,1,12,6,13,11,2,0,28,1,7,8,14,13,8,13,0,2,0,5,4,8,10,2,37,42,19,6,6,7,4,14,11,18,14,80,7,6,0,4,72,12,36,27,
        7,7,0,14,17,19,164,27,0,5,10,7,3,13,6,14,0,2,2,5,3,0,6,13,0,0,10,29,0,4,0,3,13,0,3,1,6,51,1,5,28,2,0,8,0,20,2,4,0,25,2,10,13,10,0,16,4,0,1,0,
        2,1,7,0,1,8,11,0,0,1,2,7,2,23,11,6,6,4,16,2,2,2,0,22,9,3,3,5,2,0,15,16,21,2,9,20,15,15,5,3,9,1,0,0,1,7,7,5,4,2,2,2,38,24,14,0,0,15,5,6,24,14,
        5,5,11,0,21,12,0,3,8,4,11,1,8,0,11,27,7,2,4,9,21,59,0,1,39,3,60,62,3,0,12,11,0,3,30,11,0,13,88,4,15,5,28,13,1,4,48,17,17,4,28,32,46,0,16,0,
        18,11,1,8,6,38,11,2,6,11,38,2,0,45,3,11,2,7,8,4,30,14,17,2,1,1,65,18,12,16,4,2,45,123,12,56,33,1,4,3,4,7,0,0,0,3,2,0,16,4,2,4,2,0,7,4,5,2,26,
        2,25,6,11,6,1,16,2,6,17,77,15,3,35,0,1,0,5,1,0,38,16,6,3,12,3,3,3,0,9,3,1,3,5,2,9,0,18,0,25,1,3,32,1,72,46,6,2,7,1,3,14,17,0,28,1,40,13,0,20,
        15,40,6,38,24,12,43,1,1,9,0,12,6,0,6,2,4,19,3,7,1,48,0,9,5,0,5,6,9,6,10,15,2,11,19,3,9,2,0,1,10,1,27,8,1,3,6,1,14,0,26,0,27,16,3,4,9,6,2,23,
        9,10,5,25,2,1,6,1,1,48,15,9,15,14,3,4,26,60,29,13,37,21,1,6,4,0,2,11,22,23,16,16,2,2,1,3,0,5,1,6,4,0,0,4,0,0,8,3,0,2,5,0,7,1,7,3,13,2,4,10,
        3,0,2,31,0,18,3,0,12,10,4,1,0,7,5,7,0,5,4,12,2,22,10,4,2,15,2,8,9,0,23,2,197,51,3,1,1,4,13,4,3,21,4,19,3,10,5,40,0,4,1,1,10,4,1,27,34,7,21,
        2,17,2,9,6,4,2,3,0,4,2,7,8,2,5,1,15,21,3,4,4,2,2,17,22,1,5,22,4,26,7,0,32,1,11,42,15,4,1,2,5,0,19,3,1,8,6,0,10,1,9,2,13,30,8,2,24,17,19,1,4,
        4,25,13,0,10,16,11,39,18,8,5,30,82,1,6,8,18,77,11,13,20,75,11,112,78,33,3,0,0,60,17,84,9,1,1,12,30,10,49,5,32,158,178,5,5,6,3,3,1,3,1,4,7,6,
        19,31,21,0,2,9,5,6,27,4,9,8,1,76,18,12,1,4,0,3,3,6,3,12,2,8,30,16,2,25,1,5,5,4,3,0,6,10,2,3,1,0,5,1,19,3,0,8,1,5,2,6,0,0,0,19,1,2,0,5,1,2,5,
        1,3,7,0,4,12,7,3,10,22,0,9,5,1,0,2,20,1,1,3,23,30,3,9,9,1,4,191,14,3,15,6,8,50,0,1,0,0,4,0,0,1,0,2,4,2,0,2,3,0,2,0,2,2,8,7,0,1,1,1,3,3,17,11,
        91,1,9,3,2,13,4,24,15,41,3,13,3,1,20,4,125,29,30,1,0,4,12,2,21,4,5,5,19,11,0,13,11,86,2,18,0,7,1,8,8,2,2,22,1,2,6,5,2,0,1,2,8,0,2,0,5,2,1,0,
        2,10,2,0,5,9,2,1,2,0,1,0,4,0,0,10,2,5,3,0,6,1,0,1,4,4,33,3,13,17,3,18,6,4,7,1,5,78,0,4,1,13,7,1,8,1,0,35,27,15,3,0,0,0,1,11,5,41,38,15,22,6,
        14,14,2,1,11,6,20,63,5,8,27,7,11,2,2,40,58,23,50,54,56,293,8,8,1,5,1,14,0,1,12,37,89,8,8,8,2,10,6,0,0,0,4,5,2,1,0,1,1,2,7,0,3,3,0,4,6,0,3,2,
        19,3,8,0,0,0,4,4,16,0,4,1,5,1,3,0,3,4,6,2,17,10,10,31,6,4,3,6,10,126,7,3,2,2,0,9,0,0,5,20,13,0,15,0,6,0,2,5,8,64,50,3,2,12,2,9,0,0,11,8,20,
        109,2,18,23,0,0,9,61,3,0,28,41,77,27,19,17,81,5,2,14,5,83,57,252,14,154,263,14,20,8,13,6,57,39,38,
    };
    static ImWchar base_ranges[] =
    {
        0x0020, 0x00FF, 
        0x3000, 0x30FF, 
        0x31F0, 0x31FF, 
        0xFF00, 0xFFEF, 
    };
    static bool full_ranges_unpacked = false;
    static ImWchar full_ranges[((int)(sizeof(base_ranges)/sizeof(*base_ranges))) + ((int)(sizeof(offsets_from_0x4E00)/sizeof(*offsets_from_0x4E00)))*2 + 1];
    if (!full_ranges_unpacked)
    {
        
        int codepoint = 0x4e00;
        memcpy(full_ranges, base_ranges, sizeof(base_ranges));
        ImWchar* dst = full_ranges + ((int)(sizeof(base_ranges)/sizeof(*base_ranges)));;
        for (int n = 0; n < ((int)(sizeof(offsets_from_0x4E00)/sizeof(*offsets_from_0x4E00))); n++, dst += 2)
            dst[0] = dst[1] = (ImWchar)(codepoint += (offsets_from_0x4E00[n] + 1));
        dst[0] = 0;
        full_ranges_unpacked = true;
    }
    return &full_ranges[0];
}

const ImWchar*  ImFontAtlas::GetGlyphRangesCyrillic()
{
    static const ImWchar ranges[] =
    {
        0x0020, 0x00FF, 
        0x0400, 0x052F, 
        0x2DE0, 0x2DFF, 
        0xA640, 0xA69F, 
        0,
    };
    return &ranges[0];
}

const ImWchar*  ImFontAtlas::GetGlyphRangesThai()
{
    static const ImWchar ranges[] =
    {
        0x0020, 0x00FF, 
        0x0E00, 0x0E7F, 
        0,
    };
    return &ranges[0];
}





ImFont::ImFont()
{
    Scale = 1.0f;
    FallbackChar = (ImWchar)'?';
    Clear();
}

ImFont::~ImFont()
{
    
    
    
    




    Clear();
}

void    ImFont::Clear()
{
    FontSize = 0.0f;
    DisplayOffset = ImVec2(0.0f, 1.0f);
    Glyphs.clear();
    IndexXAdvance.clear();
    IndexLookup.clear();
    FallbackGlyph = 0;
    FallbackXAdvance = 0.0f;
    ConfigDataCount = 0;
    ConfigData = 0;
    ContainerAtlas = 0;
    Ascent = Descent = 0.0f;
    MetricsTotalSurface = 0;
}

void ImFont::BuildLookupTable()
{
    int max_codepoint = 0;
    for (int i = 0; i != Glyphs.Size; i++)
        max_codepoint = ImMax(max_codepoint, (int)Glyphs[i].Codepoint);

    (void)( (!!(Glyphs.Size < 0xFFFF)) || (_wassert(L"Glyphs.Size < 0xFFFF", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1737)), 0) ); 
    IndexXAdvance.clear();
    IndexLookup.clear();
    GrowIndex(max_codepoint + 1);
    for (int i = 0; i < Glyphs.Size; i++)
    {
        int codepoint = (int)Glyphs[i].Codepoint;
        IndexXAdvance[codepoint] = Glyphs[i].XAdvance;
        IndexLookup[codepoint] = (unsigned short)i;
    }

    
    
    if (FindGlyph((unsigned short)' '))
    {
        if (Glyphs.back().Codepoint != '\t')   
            Glyphs.resize(Glyphs.Size + 1);
        ImFont::Glyph& tab_glyph = Glyphs.back();
        tab_glyph = *FindGlyph((unsigned short)' ');
        tab_glyph.Codepoint = '\t';
        tab_glyph.XAdvance *= 4;
        IndexXAdvance[(int)tab_glyph.Codepoint] = (float)tab_glyph.XAdvance;
        IndexLookup[(int)tab_glyph.Codepoint] = (unsigned short)(Glyphs.Size-1);
    }

    FallbackGlyph = 0;
    FallbackGlyph = FindGlyph(FallbackChar);
    FallbackXAdvance = FallbackGlyph ? FallbackGlyph->XAdvance : 0.0f;
    for (int i = 0; i < max_codepoint + 1; i++)
        if (IndexXAdvance[i] < 0.0f)
            IndexXAdvance[i] = FallbackXAdvance;
}

void ImFont::SetFallbackChar(ImWchar c)
{
    FallbackChar = c;
    BuildLookupTable();
}

void ImFont::GrowIndex(int new_size)
{
    (void)( (!!(IndexXAdvance.Size == IndexLookup.Size)) || (_wassert(L"IndexXAdvance.Size == IndexLookup.Size", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1778)), 0) );
    int old_size = IndexLookup.Size;
    if (new_size <= old_size)
        return;
    IndexXAdvance.resize(new_size);
    IndexLookup.resize(new_size);
    for (int i = old_size; i < new_size; i++)
    {
        IndexXAdvance[i] = -1.0f;
        IndexLookup[i] = (unsigned short)-1;
    }
}

void ImFont::AddRemapChar(ImWchar dst, ImWchar src, bool overwrite_dst)
{
    (void)( (!!(IndexLookup.Size > 0)) || (_wassert(L"IndexLookup.Size > 0", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(1793)), 0) );    
    int index_size = IndexLookup.Size;

    if (dst < index_size && IndexLookup.Data[dst] == (unsigned short)-1 && !overwrite_dst) 
        return;
    if (src >= index_size && dst >= index_size) 
        return;

    GrowIndex(dst + 1);
    IndexLookup[dst] = (src < index_size) ? IndexLookup.Data[src] : (unsigned short)-1;
    IndexXAdvance[dst] = (src < index_size) ? IndexXAdvance.Data[src] : 1.0f;
}

const ImFont::Glyph* ImFont::FindGlyph(unsigned short c) const
{
    if (c < IndexLookup.Size)
    {
        const unsigned short i = IndexLookup[c];
        if (i != (unsigned short)-1)
            return &Glyphs.Data[i];
    }
    return FallbackGlyph;
}

const char* ImFont::CalcWordWrapPositionA(float scale, const char* text, const char* text_end, float wrap_width) const
{
    
    

    
    
    

    

    
    

    
    

    float line_width = 0.0f;
    float word_width = 0.0f;
    float blank_width = 0.0f;

    const char* word_end = text;
    const char* prev_word_end = 0;
    bool inside_word = true;

    const char* s = text;
    while (s < text_end)
    {
        unsigned int c = (unsigned int)*s;
        const char* next_s;
        if (c < 0x80)
            next_s = s + 1;
        else
            next_s = s + ImTextCharFromUtf8(&c, s, text_end);
        if (c == 0)
            break;

        if (c < 32)
        {
            if (c == '\n')
            {
                line_width = word_width = blank_width = 0.0f;
                inside_word = true;
                s = next_s;
                continue;
            }
            if (c == '\r')
            {
                s = next_s;
                continue;
            }
        }

        const float char_width = ((int)c < IndexXAdvance.Size ? IndexXAdvance[(int)c] : FallbackXAdvance) * scale;
        if (ImCharIsSpace(c))
        {
            if (inside_word)
            {
                line_width += blank_width;
                blank_width = 0.0f;
                word_end = s;
            }
            blank_width += char_width;
            inside_word = false;
        }
        else
        {
            word_width += char_width;
            if (inside_word)
            {
                word_end = next_s;
            }
            else
            {
                prev_word_end = word_end;
                line_width += word_width + blank_width;
                word_width = blank_width = 0.0f;
            }

            
            inside_word = !(c == '.' || c == ',' || c == ';' || c == '!' || c == '?' || c == '\"');
        }

        
        if (line_width + word_width >= wrap_width)
        {
            
            if (word_width < wrap_width)
                s = prev_word_end ? prev_word_end : word_end;
            break;
        }

        s = next_s;
    }

    return s;
}

ImVec2 ImFont::CalcTextSizeA(float size, float max_width, float wrap_width, const char* text_begin, const char* text_end, const char** remaining) const
{
    if (!text_end)
        text_end = text_begin + strlen(text_begin); 

    const float line_height = size;
    const float scale = size / FontSize;

    ImVec2 text_size = ImVec2(0,0);
    float line_width = 0.0f;

    const bool word_wrap_enabled = (wrap_width > 0.0f);
    const char* word_wrap_eol = 0;

    const char* s = text_begin;
    while (s < text_end)
    {
        if (word_wrap_enabled)
        {
            
            if (!word_wrap_eol)
            {
                word_wrap_eol = CalcWordWrapPositionA(scale, s, text_end, wrap_width - line_width);
                if (word_wrap_eol == s) 
                    word_wrap_eol++;    
            }

            if (s >= word_wrap_eol)
            {
                if (text_size.x < line_width)
                    text_size.x = line_width;
                text_size.y += line_height;
                line_width = 0.0f;
                word_wrap_eol = 0;

                
                while (s < text_end)
                {
                    const char c = *s;
                    if (ImCharIsSpace(c)) { s++; } else if (c == '\n') { s++; break; } else { break; }
                }
                continue;
            }
        }

        
        const char* prev_s = s;
        unsigned int c = (unsigned int)*s;
        if (c < 0x80)
        {
            s += 1;
        }
        else
        {
            s += ImTextCharFromUtf8(&c, s, text_end);
            if (c == 0) 
                break;
        }

        if (c < 32)
        {
            if (c == '\n')
            {
                text_size.x = ImMax(text_size.x, line_width);
                text_size.y += line_height;
                line_width = 0.0f;
                continue;
            }
            if (c == '\r')
                continue;
        }

        const float char_width = ((int)c < IndexXAdvance.Size ? IndexXAdvance[(int)c] : FallbackXAdvance) * scale;
        if (line_width + char_width >= max_width)
        {
            s = prev_s;
            break;
        }

        line_width += char_width;
    }

    if (text_size.x < line_width)
        text_size.x = line_width;

    if (line_width > 0 || text_size.y == 0.0f)
        text_size.y += line_height;

    if (remaining)
        *remaining = s;

    return text_size;
}

void ImFont::RenderChar(ImDrawList* draw_list, float size, ImVec2 pos, ImU32 col, unsigned short c) const
{
    if (c == ' ' || c == '\t' || c == '\n' || c == '\r') 
        return;
    if (const Glyph* glyph = FindGlyph(c))
    {
        float scale = (size >= 0.0f) ? (size / FontSize) : 1.0f;
        pos.x = (float)(int)pos.x + DisplayOffset.x;
        pos.y = (float)(int)pos.y + DisplayOffset.y;
        ImVec2 pos_tl(pos.x + glyph->X0 * scale, pos.y + glyph->Y0 * scale);
        ImVec2 pos_br(pos.x + glyph->X1 * scale, pos.y + glyph->Y1 * scale);
        draw_list->PrimReserve(6, 4);
        draw_list->PrimRectUV(pos_tl, pos_br, ImVec2(glyph->U0, glyph->V0), ImVec2(glyph->U1, glyph->V1), col);
    }
}

void ImFont::RenderText(ImDrawList* draw_list, float size, ImVec2 pos, ImU32 col, const ImVec4& clip_rect, const char* text_begin, const char* text_end, float wrap_width, bool cpu_fine_clip) const
{
    if (!text_end)
        text_end = text_begin + strlen(text_begin); 

    
    pos.x = (float)(int)pos.x + DisplayOffset.x;
    pos.y = (float)(int)pos.y + DisplayOffset.y;
    float x = pos.x;
    float y = pos.y;
    if (y > clip_rect.w)
        return;

    const float scale = size / FontSize;
    const float line_height = FontSize * scale;
    const bool word_wrap_enabled = (wrap_width > 0.0f);
    const char* word_wrap_eol = 0;

    
    const char* s = text_begin;
    if (!word_wrap_enabled && y + line_height < clip_rect.y)
        while (s < text_end && *s != '\n')  
            s++;

    
    const int vtx_count_max = (int)(text_end - s) * 4;
    const int idx_count_max = (int)(text_end - s) * 6;
    const int idx_expected_size = draw_list->IdxBuffer.Size + idx_count_max;
    draw_list->PrimReserve(idx_count_max, vtx_count_max);

    ImDrawVert* vtx_write = draw_list->_VtxWritePtr;
    ImDrawIdx* idx_write = draw_list->_IdxWritePtr;
    unsigned int vtx_current_idx = draw_list->_VtxCurrentIdx;

    while (s < text_end)
    {
        if (word_wrap_enabled)
        {
            
            if (!word_wrap_eol)
            {
                word_wrap_eol = CalcWordWrapPositionA(scale, s, text_end, wrap_width - (x - pos.x));
                if (word_wrap_eol == s) 
                    word_wrap_eol++;    
            }

            if (s >= word_wrap_eol)
            {
                x = pos.x;
                y += line_height;
                word_wrap_eol = 0;

                
                while (s < text_end)
                {
                    const char c = *s;
                    if (ImCharIsSpace(c)) { s++; } else if (c == '\n') { s++; break; } else { break; }
                }
                continue;
            }
        }

        
        unsigned int c = (unsigned int)*s;
        if (c < 0x80)
        {
            s += 1;
        }
        else
        {
            s += ImTextCharFromUtf8(&c, s, text_end);
            if (c == 0) 
                break;
        }

        if (c < 32)
        {
            if (c == '\n')
            {
                x = pos.x;
                y += line_height;

                if (y > clip_rect.w)
                    break;
                if (!word_wrap_enabled && y + line_height < clip_rect.y)
                    while (s < text_end && *s != '\n')  
                        s++;
                continue;
            }
            if (c == '\r')
                continue;
        }

        float char_width = 0.0f;
        if (const Glyph* glyph = FindGlyph((unsigned short)c))
        {
            char_width = glyph->XAdvance * scale;

            
            if (c != ' ' && c != '\t')
            {
                
                float x1 = x + glyph->X0 * scale;
                float x2 = x + glyph->X1 * scale;
                float y1 = y + glyph->Y0 * scale;
                float y2 = y + glyph->Y1 * scale;
                if (x1 <= clip_rect.z && x2 >= clip_rect.x)
                {
                    
                    float u1 = glyph->U0;
                    float v1 = glyph->V0;
                    float u2 = glyph->U1;
                    float v2 = glyph->V1;

                    
                    if (cpu_fine_clip)
                    {
                        if (x1 < clip_rect.x)
                        {
                            u1 = u1 + (1.0f - (x2 - clip_rect.x) / (x2 - x1)) * (u2 - u1);
                            x1 = clip_rect.x;
                        }
                        if (y1 < clip_rect.y)
                        {
                            v1 = v1 + (1.0f - (y2 - clip_rect.y) / (y2 - y1)) * (v2 - v1);
                            y1 = clip_rect.y;
                        }
                        if (x2 > clip_rect.z)
                        {
                            u2 = u1 + ((clip_rect.z - x1) / (x2 - x1)) * (u2 - u1);
                            x2 = clip_rect.z;
                        }
                        if (y2 > clip_rect.w)
                        {
                            v2 = v1 + ((clip_rect.w - y1) / (y2 - y1)) * (v2 - v1);
                            y2 = clip_rect.w;
                        }
                        if (y1 >= y2)
                        {
                            x += char_width;
                            continue;
                        }
                    }

                    
                    
                    {
                        idx_write[0] = (ImDrawIdx)(vtx_current_idx); idx_write[1] = (ImDrawIdx)(vtx_current_idx+1); idx_write[2] = (ImDrawIdx)(vtx_current_idx+2);
                        idx_write[3] = (ImDrawIdx)(vtx_current_idx); idx_write[4] = (ImDrawIdx)(vtx_current_idx+2); idx_write[5] = (ImDrawIdx)(vtx_current_idx+3);
                        vtx_write[0].pos.x = x1; vtx_write[0].pos.y = y1; vtx_write[0].col = col; vtx_write[0].uv.x = u1; vtx_write[0].uv.y = v1;
                        vtx_write[1].pos.x = x2; vtx_write[1].pos.y = y1; vtx_write[1].col = col; vtx_write[1].uv.x = u2; vtx_write[1].uv.y = v1;
                        vtx_write[2].pos.x = x2; vtx_write[2].pos.y = y2; vtx_write[2].col = col; vtx_write[2].uv.x = u2; vtx_write[2].uv.y = v2;
                        vtx_write[3].pos.x = x1; vtx_write[3].pos.y = y2; vtx_write[3].col = col; vtx_write[3].uv.x = u1; vtx_write[3].uv.y = v2;
                        vtx_write += 4;
                        vtx_current_idx += 4;
                        idx_write += 6;
                    }
                }
            }
        }

        x += char_width;
    }

    
    draw_list->VtxBuffer.resize((int)(vtx_write - draw_list->VtxBuffer.Data));
    draw_list->IdxBuffer.resize((int)(idx_write - draw_list->IdxBuffer.Data));
    draw_list->CmdBuffer[draw_list->CmdBuffer.Size-1].ElemCount -= (idx_expected_size - draw_list->IdxBuffer.Size);
    draw_list->_VtxWritePtr = vtx_write;
    draw_list->_IdxWritePtr = idx_write;
    draw_list->_VtxCurrentIdx = (unsigned int)draw_list->VtxBuffer.Size;
}









static unsigned int stb_decompress_length(unsigned char *input)
{
    return (input[8] << 24) + (input[9] << 16) + (input[10] << 8) + input[11];
}

static unsigned char *stb__barrier, *stb__barrier2, *stb__barrier3, *stb__barrier4;
static unsigned char *stb__dout;
static void stb__match(unsigned char *data, unsigned int length)
{
    
    (void)( (!!(stb__dout + length <= stb__barrier)) || (_wassert(L"stb__dout + length <= stb__barrier", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(2216)), 0) );
    if (stb__dout + length > stb__barrier) { stb__dout += length; return; }
    if (data < stb__barrier4) { stb__dout = stb__barrier+1; return; }
    while (length--) *stb__dout++ = *data++;
}

static void stb__lit(unsigned char *data, unsigned int length)
{
    (void)( (!!(stb__dout + length <= stb__barrier)) || (_wassert(L"stb__dout + length <= stb__barrier", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(2224)), 0) );
    if (stb__dout + length > stb__barrier) { stb__dout += length; return; }
    if (data < stb__barrier2) { stb__dout = stb__barrier+1; return; }
    memcpy(stb__dout, data, length);
    stb__dout += length;
}





static unsigned char *stb_decompress_token(unsigned char *i)
{
    if (*i >= 0x20) { 
        if (*i >= 0x80)       stb__match(stb__dout-i[1]-1, i[0] - 0x80 + 1), i += 2;
        else if (*i >= 0x40)  stb__match(stb__dout-(((i[0] << 8) + i[(0)+1]) - 0x4000 + 1), i[2]+1), i += 3;
        else  stb__lit(i+1, i[0] - 0x20 + 1), i += 1 + (i[0] - 0x20 + 1);
    } else { 
        if (*i >= 0x18)       stb__match(stb__dout-(((i[0] << 16) + ((i[(0)+1] << 8) + i[((0)+1)+1])) - 0x180000 + 1), i[3]+1), i += 4;
        else if (*i >= 0x10)  stb__match(stb__dout-(((i[0] << 16) + ((i[(0)+1] << 8) + i[((0)+1)+1])) - 0x100000 + 1), ((i[3] << 8) + i[(3)+1])+1), i += 5;
        else if (*i >= 0x08)  stb__lit(i+2, ((i[0] << 8) + i[(0)+1]) - 0x0800 + 1), i += 2 + (((i[0] << 8) + i[(0)+1]) - 0x0800 + 1);
        else if (*i == 0x07)  stb__lit(i+3, ((i[1] << 8) + i[(1)+1]) + 1), i += 3 + (((i[1] << 8) + i[(1)+1]) + 1);
        else if (*i == 0x06)  stb__match(stb__dout-(((i[1] << 16) + ((i[(1)+1] << 8) + i[((1)+1)+1]))+1), i[4]+1), i += 5;
        else if (*i == 0x04)  stb__match(stb__dout-(((i[1] << 16) + ((i[(1)+1] << 8) + i[((1)+1)+1]))+1), ((i[4] << 8) + i[(4)+1])+1), i += 6;
    }
    return i;
}

static unsigned int stb_adler32(unsigned int adler32, unsigned char *buffer, unsigned int buflen)
{
    const unsigned long ADLER_MOD = 65521;
    unsigned long s1 = adler32 & 0xffff, s2 = adler32 >> 16;
    unsigned long blocklen, i;

    blocklen = buflen % 5552;
    while (buflen) {
        for (i=0; i + 7 < blocklen; i += 8) {
            s1 += buffer[0], s2 += s1;
            s1 += buffer[1], s2 += s1;
            s1 += buffer[2], s2 += s1;
            s1 += buffer[3], s2 += s1;
            s1 += buffer[4], s2 += s1;
            s1 += buffer[5], s2 += s1;
            s1 += buffer[6], s2 += s1;
            s1 += buffer[7], s2 += s1;

            buffer += 8;
        }

        for (; i < blocklen; ++i)
            s1 += *buffer++, s2 += s1;

        s1 %= ADLER_MOD, s2 %= ADLER_MOD;
        buflen -= blocklen;
        blocklen = 5552;
    }
    return (unsigned int)(s2 << 16) + (unsigned int)s1;
}

static unsigned int stb_decompress(unsigned char *output, unsigned char *i, unsigned int length)
{
    unsigned int olen;
    if (((i[0] << 24) + ((i[(0)+1] << 16) + ((i[((0)+1)+1] << 8) + i[(((0)+1)+1)+1]))) != 0x57bC0000) return 0;
    if (((i[4] << 24) + ((i[(4)+1] << 16) + ((i[((4)+1)+1] << 8) + i[(((4)+1)+1)+1]))) != 0)          return 0; 
    olen = stb_decompress_length(i);
    stb__barrier2 = i;
    stb__barrier3 = i+length;
    stb__barrier = output + olen;
    stb__barrier4 = output;
    i += 16;

    stb__dout = output;
    for (;;) {
        unsigned char *old_i = i;
        i = stb_decompress_token(i);
        if (i == old_i) {
            if (*i == 0x05 && i[1] == 0xfa) {
                (void)( (!!(stb__dout == output + olen)) || (_wassert(L"stb__dout == output + olen", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(2301)), 0) );
                if (stb__dout != output + olen) return 0;
                if (stb_adler32(1, output, olen) != (unsigned int) ((i[2] << 24) + ((i[(2)+1] << 16) + ((i[((2)+1)+1] << 8) + i[(((2)+1)+1)+1]))))
                    return 0;
                return olen;
            } else {
                (void)( (!!(0)) || (_wassert(L"0", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(2307)), 0) ); 
                return 0;
            }
        }
        (void)( (!!(stb__dout <= output + olen)) || (_wassert(L"stb__dout <= output + olen", L"c:\\biblioteki\\imgui-sfml\\imgui_draw.cpp", (unsigned)(2311)), 0) );
        if (stb__dout > output + olen)
            return 0;
    }
}










static const char proggy_clean_ttf_compressed_data_base85[11980+1] =
    "7])#######hV0qs'/###[),##/l:$#Q6>##5[n42>c-TH`->>#/e>11NNV=Bv(*:.F?uu#(gRU.o0XGH`$vhLG1hxt9?W`#,5LsCp#-i>.r$<$6pD>Lb';9Crc6tgXmKVeU2cD4Eo3R/"
    "2*>]b(MC;$jPfY.;h^`IWM9<Lh2TlS+f-s$o6Q<BWH`YiU.xfLq$N;$0iR/GX:U(jcW2p/W*q?-qmnUCI;jHSAiFWM.R*kU@C=GH?a9wp8f$e.-4^Qg1)Q-GL(lf(r/7GrRgwV%MS=C#"
    "`8ND>Qo#t'X#(v#Y9w0#1D$CIf;W'#pWUPXOuxXuU(H9M(1<q-UE31#^-V'8IRUo7Qf./L>=Ke$$'5F%)]0^#0X@U.a<r:QLtFsLcL6##lOj)#.Y5<-R&KgLwqJfLgN&;Q?gI^#DY2uL"
    "i@^rMl9t=cWq6##weg>$FBjVQTSDgEKnIS7EM9>ZY9w0#L;>>#Mx&4Mvt//L[MkA#W@lK.N'[0#7RL_&#w+F%HtG9M#XL`N&.,GM4Pg;-<nLENhvx>-VsM.M0rJfLH2eTM`*oJMHRC`N"
    "kfimM2J,W-jXS:)r0wK#@Fge$U>`w'N7G#$#fB#$E^$#:9:hk+eOe--6x)F7*E%?76%^GMHePW-Z5l'&GiF#$956:rS?dA#fiK:)Yr+`&#0j@'DbG&#^$PG.Ll+DNa<XCMKEV*N)LN/N"
    "*b=%Q6pia-Xg8I$<MR&,VdJe$<(7G;Ckl'&hF;;$<_=X(b.RS%%)###MPBuuE1V:v&cX&#2m#(&cV]`k9OhLMbn%s$G2,B$BfD3X*sp5#l,$R#]x_X1xKX%b5U*[r5iMfUo9U`N99hG)"
    "tm+/Us9pG)XPu`<0s-)WTt(gCRxIg(%6sfh=ktMKn3j)<6<b5Sk_/0(^]AaN#(p/L>&VZ>1i%h1S9u5o@YaaW$e+b<TWFn/Z:Oh(Cx2$lNEoN^e)#CFY@@I;BOQ*sRwZtZxRcU7uW6CX"
    "ow0i(?$Q[cjOd[P4d)]>ROPOpxTO7Stwi1::iB1q)C_=dV26J;2,]7op$]uQr@_V7$q^%lQwtuHY]=DX,n3L#0PHDO4f9>dC@O>HBuKPpP*E,N+b3L#lpR/MrTEH.IAQk.a>D[.e;mc."
    "x]Ip.PH^'/aqUO/$1WxLoW0[iLA<QT;5HKD+@qQ'NQ(3_PLhE48R.qAPSwQ0/WK?Z,[x?-J;jQTWA0X@KJ(_Y8N-:/M74:/-ZpKrUss?d#dZq]DAbkU*JqkL+nwX@@47`5>w=4h(9.`G"
    "CRUxHPeR`5Mjol(dUWxZa(>STrPkrJiWx`5U7F#.g*jrohGg`cg:lSTvEY/EV_7H4Q9[Z%cnv;JQYZ5q.l7Zeas:HOIZOB?G<Nald$qs]@]L<J7bR*>gv:[7MI2k).'2($5FNP&EQ(,)"
    "U]W]+fh18.vsai00);D3@4ku5P?DP8aJt+;qUM]=+b'8@;mViBKx0DE[-auGl8:PJ&Dj+M6OC]O^((##]`0i)drT;-7X`=-H3[igUnPG-NZlo.#k@h#=Ork$m>a>$-?Tm$UV(?#P6YY#"
    "'/###xe7q.73rI3*pP/$1>s9)W,JrM7SN]'/4C#v$U`0#V.[0>xQsH$fEmPMgY2u7Kh(G%siIfLSoS+MK2eTM$=5,M8p`A.;_R%#u[K#$x4AG8.kK/HSB==-'Ie/QTtG?-.*^N-4B/ZM"
    "_3YlQC7(p7q)&](`6_c)$/*JL(L-^(]$wIM`dPtOdGA,U3:w2M-0<q-]L_?^)1vw'.,MRsqVr.L;aN&#/EgJ)PBc[-f>+WomX2u7lqM2iEumMTcsF?-aT=Z-97UEnXglEn1K-bnEO`gu"
    "Ft(c%=;Am_Qs@jLooI&NX;]0#j4#F14;gl8-GQpgwhrq8'=l_f-b49'UOqkLu7-##oDY2L(te+Mch&gLYtJ,MEtJfLh'x'M=$CS-ZZ%P]8bZ>#S?YY#%Q&q'3^Fw&?D)UDNrocM3A76/"
    "/oL?#h7gl85[qW/NDOk%16ij;+:1a'iNIdb-ou8.P*w,v5#EI$TWS>Pot-R*H'-SEpA:g)f+O$%%`kA#G=8RMmG1&O`>to8bC]T&$,n.LoO>29sp3dt-52U%VM#q7'DHpg+#Z9%H[K<L"
    "%a2E-grWVM3@2=-k22tL]4$##6We'8UJCKE[d_=%wI;'6X-GsLX4j^SgJ$##R*w,vP3wK#iiW&#*h^D&R?jp7+/u&#(AP##XU8c$fSYW-J95_-Dp[g9wcO&#M-h1OcJlc-*vpw0xUX&#"
    "OQFKNX@QI'IoPp7nb,QU//MQ&ZDkKP)X<WSVL(68uVl&#c'[0#(s1X&xm$Y%B7*K:eDA323j998GXbA#pwMs-jgD$9QISB-A_(aN4xoFM^@C58D0+Q+q3n0#3U1InDjF682-SjMXJK)("
    "h$hxua_K]ul92%'BOU&#BRRh-slg8KDlr:%L71Ka:.A;%YULjDPmL<LYs8i#XwJOYaKPKc1h:'9Ke,g)b),78=I39B;xiY$bgGw-&.Zi9InXDuYa%G*f2Bq7mn9^#p1vv%#(Wi-;/Z5h"
    "o;#2:;%d&#x9v68C5g?ntX0X)pT`;%pB3q7mgGN)3%(P8nTd5L7GeA-GL@+%J3u2:(Yf>et`e;)f#Km8&+DC$I46>#Kr]]u-[=99tts1.qb#q72g1WJO81q+eN'03'eM>&1XxY-caEnO"
    "j%2n8)),?ILR5^.Ibn<-X-Mq7[a82Lq:F&#ce+S9wsCK*x`569E8ew'He]h:sI[2LM$[guka3ZRd6:t%IG:;$%YiJ:Nq=?eAw;/:nnDq0(CYcMpG)qLN4$##&J<j$UpK<Q4a1]MupW^-"
    "sj_$%[HK%'F####QRZJ::Y3EGl4'@%FkiAOg#p[##O`gukTfBHagL<LHw%q&OV0##F=6/:chIm0@eCP8X]:kFI%hl8hgO@RcBhS-@Qb$%+m=hPDLg*%K8ln(wcf3/'DW-$.lR?n[nCH-"
    "eXOONTJlh:.RYF%3'p6sq:UIMA945&^HFS87@$EP2iG<-lCO$%c`uKGD3rC$x0BL8aFn--`ke%#HMP'vh1/R&O_J9'um,.<tx[@%wsJk&bUT2`0uMv7gg#qp/ij.L56'hl;.s5CUrxjO"
    "M7-##.l+Au'A&O:-T72L]P`&=;ctp'XScX*rU.>-XTt,%OVU4)S1+R-#dg0/Nn?Ku1^0f$B*P:Rowwm-`0PKjYDDM'3]d39VZHEl4,.j']Pk-M.h^&:0FACm$maq-&sgw0t7/6(^xtk%"
    "LuH88Fj-ekm>GA#_>568x6(OFRl-IZp`&b,_P'$M<Jnq79VsJW/mWS*PUiq76;]/NM_>hLbxfc$mj`,O;&%W2m`Zh:/)Uetw:aJ%]K9h:TcF]u_-Sj9,VK3M.*'&0D[Ca]J9gp8,kAW]"
    "%(?A%R$f<->Zts'^kn=-^@c4%-pY6qI%J%1IGxfLU9CP8cbPlXv);C=b),<2mOvP8up,UVf3839acAWAW-W?#ao/^#%KYo8fRULNd2.>%m]UK:n%r$'sw]J;5pAoO_#2mO3n,'=H5(et"
    "Hg*`+RLgv>=4U8guD$I%D:W>-r5V*%j*W:Kvej.Lp$<M-SGZ':+Q_k+uvOSLiEo(<aD/K<CCc`'Lx>'?;++O'>()jLR-^u68PHm8ZFWe+ej8h:9r6L*0//c&iH&R8pRbA#Kjm%upV1g:"
    "a_#Ur7FuA#(tRh#.Y5K+@?3<-8m0$PEn;J:rh6?I6uG<-`wMU'ircp0LaE_OtlMb&1#6T.#FDKu#1Lw%u%+GM+X'e?YLfjM[VO0MbuFp7;>Q&#WIo)0@F%q7c#4XAXN-U&VB<HFF*qL("
    "$/V,;(kXZejWO`<[5?\?ewY(*9=%wDc;,u<'9t3W-(H1th3+G]ucQ]kLs7df($/*JL]@*t7Bu_G3_7mp7<iaQjO@.kLg;x3B0lqp7Hf,^Ze7-##@/c58Mo(3;knp0%)A7?-W+eI'o8)b<"
    "nKnw'Ho8C=Y>pqB>0ie&jhZ[?iLR@@_AvA-iQC(=ksRZRVp7`.=+NpBC%rh&3]R:8XDmE5^V8O(x<<aG/1N$#FX$0V5Y6x'aErI3I$7x%E`v<-BY,)%-?Psf*l?%C3.mM(=/M0:JxG'?"
    "7WhH%o'a<-80g0NBxoO(GH<dM]n.+%q@jH?f.UsJ2Ggs&4<-e47&Kl+f//9@`b+?.TeN_&B8Ss?v;^Trk;f#YvJkl&w$]>-+k?'(<S:68tq*WoDfZu';mM?8X[ma8W%*`-=;D.(nc7/;"
    ")g:T1=^J$&BRV(-lTmNB6xqB[@0*o.erM*<SWF]u2=st-*(6v>^](H.aREZSi,#1:[IXaZFOm<-ui#qUq2$##Ri;u75OK#(RtaW-K-F`S+cF]uN`-KMQ%rP/Xri.LRcB##=YL3BgM/3M"
    "D?@f&1'BW-)Ju<L25gl8uhVm1hL$##*8###'A3/LkKW+(^rWX?5W_8g)a(m&K8P>#bmmWCMkk&#TR`C,5d>g)F;t,4:@_l8G/5h4vUd%&%950:VXD'QdWoY-F$BtUwmfe$YqL'8(PWX("
    "P?^@Po3$##`MSs?DWBZ/S>+4%>fX,VWv/w'KD`LP5IbH;rTV>n3cEK8U#bX]l-/V+^lj3;vlMb&[5YQ8#pekX9JP3XUC72L,,?+Ni&co7ApnO*5NK,((W-i:$,kp'UDAO(G0Sq7MVjJs"
    "bIu)'Z,*[>br5fX^:FPAWr-m2KgL<LUN098kTF&#lvo58=/vjDo;.;)Ka*hLR#/k=rKbxuV`>Q_nN6'8uTG&#1T5g)uLv:873UpTLgH+#FgpH'_o1780Ph8KmxQJ8#H72L4@768@Tm&Q"
    "h4CB/5OvmA&,Q&QbUoi$a_%3M01H)4x7I^&KQVgtFnV+;[Pc>[m4k//,]1?#`VY[Jr*3&&slRfLiVZJ:]?=K3Sw=[$=uRB?3xk48@aeg<Z'<$#4H)6,>e0jT6'N#(q%.O=?2S]u*(m<-"
    "V8J'(1)G][68hW$5'q[GC&5j`TE?m'esFGNRM)j,ffZ?-qx8;->g4t*:CIP/[Qap7/9'#(1sao7w-.qNUdkJ)tCF&#B^;xGvn2r9FEPFFFcL@.iFNkTve$m%#QvQS8U@)2Z+3K:AKM5i"
    "sZ88+dKQ)W6>J%CL<KE>`.d*(B`-n8D9oK<Up]c$X$(,)M8Zt7/[rdkqTgl-0cuGMv'?>-XV1q['-5k'cAZ69e;D_?$ZPP&s^+7])$*$#@QYi9,5P&#9r+$%CE=68>K8r0=dSC%%(@p7"
    ".m7jilQ02'0-VWAg<a/''3u.=4L$Y)6k/K:_[3=&jvL<L0C/2'v:^;-DIBW,B4E68:kZ;%?8(Q8BH=kO65BW?xSG&#@uU,DS*,?.+(o(#1vCS8#CHF>TlGW'b)Tq7VT9q^*^$$.:&N@@"
    "$&)WHtPm*5_rO0&e%K&#-30j(E4#'Zb.o/(Tpm$>K'f@[PvFl,hfINTNU6u'0pao7%XUp9]5.>%h`8_=VYbxuel.NTSsJfLacFu3B'lQSu/m6-Oqem8T+oE--$0a/k]uj9EwsG>%veR*"
    "hv^BFpQj:K'#SJ,sB-'#](j.Lg92rTw-*n%@/;39rrJF,l#qV%OrtBeC6/,;qB3ebNW[?,Hqj2L.1NP&GjUR=1D8QaS3Up&@*9wP?+lo7b?@%'k4`p0Z$22%K3+iCZj?XJN4Nm&+YF]u"
    "@-W$U%VEQ/,,>>#)D<h#`)h0:<Q6909ua+&VU%n2:cG3FJ-%@Bj-DgLr`Hw&HAKjKjseK</xKT*)B,N9X3]krc12t'pgTV(Lv-tL[xg_%=M_q7a^x?7Ubd>#%8cY#YZ?=,`Wdxu/ae&#"
    "w6)R89tI#6@s'(6Bf7a&?S=^ZI_kS&ai`&=tE72L_D,;^R)7[$s<Eh#c&)q.MXI%#v9ROa5FZO%sF7q7Nwb&#ptUJ:aqJe$Sl68%.D###EC><?-aF&#RNQv>o8lKN%5/$(vdfq7+ebA#"
    "u1p]ovUKW&Y%q]'>$1@-[xfn$7ZTp7mM,G,Ko7a&Gu%G[RMxJs[0MM%wci.LFDK)(<c`Q8N)jEIF*+?P2a8g%)$q]o2aH8C&<SibC/q,(e:v;-b#6[$NtDZ84Je2KNvB#$P5?tQ3nt(0"
    "d=j.LQf./Ll33+(;q3L-w=8dX$#WF&uIJ@-bfI>%:_i2B5CsR8&9Z&#=mPEnm0f`<&c)QL5uJ#%u%lJj+D-r;BoF&#4DoS97h5g)E#o:&S4weDF,9^Hoe`h*L+_a*NrLW-1pG_&2UdB8"
    "6e%B/:=>)N4xeW.*wft-;$'58-ESqr<b?UI(_%@[P46>#U`'6AQ]m&6/`Z>#S?YY#Vc;r7U2&326d=w&H####?TZ`*4?&.MK?LP8Vxg>$[QXc%QJv92.(Db*B)gb*BM9dM*hJMAo*c&#"
    "b0v=Pjer]$gG&JXDf->'StvU7505l9$AFvgYRI^&<^b68?j#q9QX4SM'RO#&sL1IM.rJfLUAj221]d##DW=m83u5;'bYx,*Sl0hL(W;;$doB&O/TQ:(Z^xBdLjL<Lni;''X.`$#8+1GD"
    ":k$YUWsbn8ogh6rxZ2Z9]%nd+>V#*8U_72Lh+2Q8Cj0i:6hp&$C/:p(HK>T8Y[gHQ4`4)'$Ab(Nof%V'8hL&#<NEdtg(n'=S1A(Q1/I&4([%dM`,Iu'1:_hL>SfD07&6D<fp8dHM7/g+"
    "tlPN9J*rKaPct&?'uBCem^jn%9_K)<,C5K3s=5g&GmJb*[SYq7K;TRLGCsM-$$;S%:Y@r7AK0pprpL<Lrh,q7e/%KWK:50I^+m'vi`3?%Zp+<-d+$L-Sv:@.o19n$s0&39;kn;S%BSq*"
    "$3WoJSCLweV[aZ'MQIjO<7;X-X;&+dMLvu#^UsGEC9WEc[X(wI7#2.(F0jV*eZf<-Qv3J-c+J5AlrB#$p(H68LvEA'q3n0#m,[`*8Ft)FcYgEud]CWfm68,(aLA$@EFTgLXoBq/UPlp7"
    ":d[/;r_ix=:TF`S5H-b<LI&HY(K=h#)]Lk$K14lVfm:x$H<3^Ql<M`$OhapBnkup'D#L$Pb_`N*g]2e;X/Dtg,bsj&K#2[-:iYr'_wgH)NUIR8a1n#S?Yej'h8^58UbZd+^FKD*T@;6A"
    "7aQC[K8d-(v6GI$x:T<&'Gp5Uf>@M.*J:;$-rv29'M]8qMv-tLp,'886iaC=Hb*YJoKJ,(j%K=H`K.v9HggqBIiZu'QvBT.#=)0ukruV&.)3=(^1`o*Pj4<-<aN((^7('#Z0wK#5GX@7"
    "u][`*S^43933A4rl][`*O4CgLEl]v$1Q3AeF37dbXk,.)vj#x'd`;qgbQR%FW,2(?LO=s%Sc68%NP'##Aotl8x=BE#j1UD([3$M(]UI2LX3RpKN@;/#f'f/&_mt&F)XdF<9t4)Qa.*kT"
    "LwQ'(TTB9.xH'>#MJ+gLq9-##@HuZPN0]u:h7.T..G:;$/Usj(T7`Q8tT72LnYl<-qx8;-HV7Q-&Xdx%1a,hC=0u+HlsV>nuIQL-5<N?)NBS)QN*_I,?&)2'IM%L3I)X((e/dl2&8'<M"
    ":^#M*Q+[T.Xri.LYS3v%fF`68h;b-X[/En'CR.q7E)p'/kle2HM,u;^%OKC-N+Ll%F9CF<Nf'^#t2L,;27W:0O@6##U6W7:$rJfLWHj$#)woqBefIZ.PK<b*t7ed;p*_m;4ExK#h@&]>"
    "_>@kXQtMacfD.m-VAb8;IReM3$wf0''hra*so568'Ip&vRs849'MRYSp%:t:h5qSgwpEr$B>Q,;s(C#$)`svQuF$##-D,##,g68@2[T;.XSdN9Qe)rpt._K-#5wF)sP'##p#C0c%-Gb%"
    "hd+<-j'Ai*x&&HMkT]C'OSl##5RG[JXaHN;d'uA#x._U;.`PU@(Z3dt4r152@:v,'R.Sj'w#0<-;kPI)FfJ&#AYJ&#//)>-k=m=*XnK$>=)72L]0I%>.G690a:$##<,);?;72#?x9+d;"
    "^V'9;jY@;)br#q^YQpx:X#Te$Z^'=-=bGhLf:D6&bNwZ9-ZD#n^9HhLMr5G;']d&6'wYmTFmL<LD)F^%[tC'8;+9E#C$g%#5Y>q9wI>P(9mI[>kC-ekLC/R&CH+s'B;K-M6$EB%is00:"
    "+A4[7xks.LrNk0&E)wILYF@2L'0Nb$+pv<(2.768/FrY&h$^3i&@+G%JT'<-,v`3;_)I9M^AE]CN?Cl2AZg+%4iTpT3<n-&%H%b<FDj2M<hH=&Eh<2Len$b*aTX=-8QxN)k11IM1c^j%"
    "9s<L<NFSo)B?+<-(GxsF,^-Eh@$4dXhN$+#rxK8'je'D7k`e;)2pYwPA'_p9&@^18ml1^[@g4t*[JOa*[=Qp7(qJ_oOL^('7fB&Hq-:sf,sNj8xq^>$U4O]GKx'm9)b@p7YsvK3w^YR-"
    "CdQ*:Ir<($u&)#(&?L9Rg3H)4fiEp^iI9O8KnTj,]H?D*r7'M;PwZ9K0E^k&-cpI;.p/6_vwoFMV<->#%Xi.LxVnrU(4&8/P+:hLSKj$#U%]49t'I:rgMi'FL@a:0Y-uA[39',(vbma*"
    "hU%<-SRF`Tt:542R_VV$p@[p8DV[A,?1839FWdF<TddF<9Ah-6&9tWoDlh]&1SpGMq>Ti1O*H&#(AL8[_P%.M>v^-))qOT*F5Cq0`Ye%+$B6i:7@0IX<N+T+0MlMBPQ*Vj>SsD<U4JHY"
    "8kD2)2fU/M#$e.)T4,_=8hLim[&);?UkK'-x?'(:siIfL<$pFM`i<?%W(mGDHM%>iWP,##P`%/L<eXi:@Z9C.7o=@(pXdAO/NLQ8lPl+HPOQa8wD8=^GlPa8TKI1CjhsCTSLJM'/Wl>-"
    "S(qw%sf/@%#B6;/U7K]uZbi^Oc^2n<bhPmUkMw>%t<)'mEVE''n`WnJra$^TKvX5B>;_aSEK',(hwa0:i4G?.Bci.(X[?b*($,=-n<.Q%`(X=?+@Am*Js0&=3bh8K]mL<LoNs'6,'85`"
    "0?t/'_U59@]ddF<#LdF<eWdF<OuN/45rY<-L@&#+fm>69=Lb,OcZV/);TTm8VI;?%OtJ<(b4mq7M6:u?KRdF<gR@2L=FNU-<b[(9c/ML3m;Z[$oF3g)GAWqpARc=<ROu7cL5l;-[A]%/"
    "+fsd;l#SafT/f*W]0=O'$(Tb<[)*@e775R-:Yob%g*>l*:xP?Yb.5)%w_I?7uk5JC+FS(m#i'k.'a0i)9<7b'fs'59hq$*5Uhv##pi^8+hIEBF`nvo`;'l0.^S1<-wUK2/Coh58KKhLj"
    "M=SO*rfO`+qC`W-On.=AJ56>>i2@2LH6A:&5q`?9I3@@'04&p2/LVa*T-4<-i3;M9UvZd+N7>b*eIwg:CC)c<>nO&#<IGe;__.thjZl<%w(Wk2xmp4Q@I#I9,DF]u7-P=.-_:YJ]aS@V"
    "?6*C()dOp7:WL,b&3Rg/.cmM9&r^>$(>.Z-I&J(Q0Hd5Q%7Co-b`-c<N(6r@ip+AurK<m86QIth*#v;-OBqi+L7wDE-Ir8K['m+DDSLwK&/.?-V%U_%3:qKNu$_b*B-kp7NaD'QdWQPK"
    "Yq[@>P)hI;*_F]u`Rb[.j8_Q/<&>uu+VsH$sM9TA%?)(vmJ80),P7E>)tjD%2L=-t#fK[%`v=Q8<FfNkgg^oIbah*#8/Qt$F&:K*-(N/'+1vMB,u()-a.VUU*#[e%gAAO(S>WlA2);Sa"
    ">gXm8YB`1d@K#n]76-a$U,mF<fX]idqd)<3,]J7JmW4`6]uks=4-72L(jEk+:bJ0M^q-8Dm_Z?0olP1C9Sa&H[d&c$ooQUj]Exd*3ZM@-WGW2%s',B-_M%>%Ul:#/'xoFM9QX-$.QN'>"
    "[%$Z$uF6pA6Ki2O5:8w*vP1<-1`[G,)-m#>0`P&#eb#.3i)rtB61(o'$?X3B</R90;eZ]%Ncq;-Tl]#F>2Qft^ae_5tKL9MUe9b*sLEQ95C&`=G?@Mj=wh*'3E>=-<)Gt*Iw)'QG:`@I"
    "wOf7&]1i'S01B+Ev/Nac#9S;=;YQpg_6U`*kVY39xK,[/6Aj7:'1Bm-_1EYfa1+o&o4hp7KN_Q(OlIo@S%;jVdn0'1<Vc52=u`3^o-n1'g4v58Hj&6_t7$##?M)c<$bgQ_'SY((-xkA#"
    "Y(,p'H9rIVY-b,'%bCPF7.J<Up^,(dU1VY*5#WkTU>h19w,WQhLI)3S#f$2(eb,jr*b;3Vw]*7NH%$c4Vs,eD9>XW8?N]o+(*pgC%/72LV-u<Hp,3@e^9UB1J+ak9-TN/mhKPg+AJYd$"
    "MlvAF_jCK*.O-^(63adMT->W%iewS8W6m2rtCpo'RS1R84=@paTKt)>=%&1[)*vp'u+x,VrwN;&]kuO9JDbg=pO$J*.jVe;u'm0dr9l,<*wMK*Oe=g8lV_KEBFkO'oU]^=[-792#ok,)"
    "i]lR8qQ2oA8wcRCZ^7w/Njh;?.stX?Q1>S1q4Bn$)K1<-rGdO'$Wr.Lc.CG)$/*JL4tNR/,SVO3,aUw'DJN:)Ss;wGn9A32ijw%FL+Z0Fn.U9;reSq)bmI32U==5ALuG&#Vf1398/pVo"
    "1*c-(aY168o<`JsSbk-,1N;$>0:OUas(3:8Z972LSfF8eb=c-;>SPw7.6hn3m`9^Xkn(r.qS[0;T%&Qc=+STRxX'q1BNk3&*eu2;&8q$&x>Q#Q7^Tf+6<(d%ZVmj2bDi%.3L2n+4W'$P"
    "iDDG)g,r%+?,$@?uou5tSe2aN_AQU*<h`e-GI7)?OK2A.d7_c)?wQ5AS@DL3r#7fSkgl6-++D:'A,uq7SvlB$pcpH'q3n0#_%dY#xCpr-l<F0NR@-##FEV6NTF6##$l84N1w?AO>'IAO"
    "URQ##V^Fv-XFbGM7Fl(N<3DhLGF%q.1rC$#:T__&Pi68%0xi_&[qFJ(77j_&JWoF.V735&T,[R*:xFR*K5>>#`bW-?4Ne_&6Ne_&6Ne_&n`kr-#GJcM6X;uM6X;uM(.a..^2TkL%oR(#"
    ";u.T%fAr%4tJ8&><1=GHZ_+m9/#H1F^R#SC#*N=BA9(D?v[UiFY>>^8p,KKF.W]L29uLkLlu/+4T<XoIB&hx=T1PcDaB&;HH+-AFr?(m9HZV)FKS8JCw;SD=6[^/DZUL`EUDf]GGlG&>"
    "w$)F./^n3+rlo+DB;5sIYGNk+i1t-69Jg--0pao7Sm#K)pdHW&;LuDNH@H>#/X-TI(;P>#,Gc>#0Su>#4`1?#8lC?#<xU?#@.i?#D:%@#HF7@#LRI@#P_[@#Tkn@#Xw*A#]-=A#a9OA#"
    "d<F&#*;G##.GY##2Sl##6`($#:l:$#>xL$#B.`$#F:r$#JF.%#NR@%#R_R%#Vke%#Zww%#_-4&#3^Rh%Sflr-k'MS.o?.5/sWel/wpEM0%3'/1)K^f1-d>G21&v(35>V`39V7A4=onx4"
    "A1OY5EI0;6Ibgr6M$HS7Q<)58C5w,;WoA*#[%T*#`1g*#d=#+#hI5+#lUG+#pbY+#tnl+#x$),#&1;,#*=M,#.I`,#2Ur,#6b.-#;w[H#iQtA#m^0B#qjBB#uvTB##-hB#'9$C#+E6C#"
    "/QHC#3^ZC#7jmC#;v)D#?,<D#C8ND#GDaD#KPsD#O]/E#g1A5#KA*1#gC17#MGd;#8(02#L-d3#rWM4#Hga1#,<w0#T.j<#O#'2#CYN1#qa^:#_4m3#o@/=#eG8=#t8J5#`+78#4uI-#"
    "m3B2#SB[8#Q0@8#i[*9#iOn8#1Nm;#^sN9#qh<9#:=x-#P;K2#$%X9#bC+.#Rg;<#mN=.#MTF.#RZO.#2?)4#Y#(/#[)1/#b;L/#dAU/#0Sv;#lY$0#n`-0#sf60#(F24#wrH0#%/e0#"
    "TmD<#%JSMFove:CTBEXI:<eh2g)B,3h2^G3i;#d3jD>)4kMYD4lVu`4m`:&5niUA5@(A5BA1]PBB:xlBCC=2CDLXMCEUtiCf&0g2'tN?PGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CP"
    "GT4CPGT4CPGT4CPGT4CPGT4CPGT4CP-qekC`.9kEg^+F$kwViFJTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5o,^<-28ZI'O?;xp"
    "O?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xp;7q-#lLYI:xvD=#";

static const char* GetDefaultCompressedFontDataTTFBase85()
{
    return proggy_clean_ttf_compressed_data_base85;
}
