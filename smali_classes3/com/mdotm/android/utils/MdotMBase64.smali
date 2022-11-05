.class public Lcom/mdotm/android/utils/MdotMBase64;
.super Ljava/lang/Object;
.source "MdotMBase64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mdotm/android/utils/MdotMBase64$InputStream;,
        Lcom/mdotm/android/utils/MdotMBase64$OutputStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DECODE:I = 0x0

.field public static final DONT_GUNZIP:I = 0x4

.field public static final DO_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v5, -0x5

    const/16 v4, -0x9

    .line 172
    const-class v0, Lcom/mdotm/android/utils/MdotMBase64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/mdotm/android/utils/MdotMBase64;->$assertionsDisabled:Z

    .line 240
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mdotm/android/utils/MdotMBase64;->_STANDARD_ALPHABET:[B

    .line 259
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aput-byte v4, v0, v2

    const/4 v2, 0x6

    .line 260
    aput-byte v4, v0, v2

    const/4 v2, 0x7

    aput-byte v4, v0, v2

    const/16 v2, 0x8

    aput-byte v4, v0, v2

    const/16 v2, 0x9

    .line 261
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 262
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 263
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 264
    aput-byte v4, v0, v2

    const/16 v2, 0xf

    aput-byte v4, v0, v2

    const/16 v2, 0x10

    aput-byte v4, v0, v2

    const/16 v2, 0x11

    aput-byte v4, v0, v2

    const/16 v2, 0x12

    aput-byte v4, v0, v2

    const/16 v2, 0x13

    aput-byte v4, v0, v2

    const/16 v2, 0x14

    aput-byte v4, v0, v2

    const/16 v2, 0x15

    aput-byte v4, v0, v2

    const/16 v2, 0x16

    aput-byte v4, v0, v2

    const/16 v2, 0x17

    aput-byte v4, v0, v2

    const/16 v2, 0x18

    aput-byte v4, v0, v2

    const/16 v2, 0x19

    aput-byte v4, v0, v2

    const/16 v2, 0x1a

    aput-byte v4, v0, v2

    const/16 v2, 0x1b

    .line 266
    aput-byte v4, v0, v2

    const/16 v2, 0x1c

    aput-byte v4, v0, v2

    const/16 v2, 0x1d

    aput-byte v4, v0, v2

    const/16 v2, 0x1e

    aput-byte v4, v0, v2

    const/16 v2, 0x1f

    aput-byte v4, v0, v2

    const/16 v2, 0x20

    .line 267
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 268
    aput-byte v4, v0, v2

    const/16 v2, 0x22

    aput-byte v4, v0, v2

    const/16 v2, 0x23

    aput-byte v4, v0, v2

    const/16 v2, 0x24

    aput-byte v4, v0, v2

    const/16 v2, 0x25

    aput-byte v4, v0, v2

    const/16 v2, 0x26

    aput-byte v4, v0, v2

    const/16 v2, 0x27

    aput-byte v4, v0, v2

    const/16 v2, 0x28

    aput-byte v4, v0, v2

    const/16 v2, 0x29

    aput-byte v4, v0, v2

    const/16 v2, 0x2a

    aput-byte v4, v0, v2

    const/16 v2, 0x2b

    .line 269
    const/16 v3, 0x3e

    aput-byte v3, v0, v2

    const/16 v2, 0x2c

    .line 270
    aput-byte v4, v0, v2

    const/16 v2, 0x2d

    aput-byte v4, v0, v2

    const/16 v2, 0x2e

    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 271
    const/16 v3, 0x3f

    aput-byte v3, v0, v2

    const/16 v2, 0x30

    .line 272
    const/16 v3, 0x34

    aput-byte v3, v0, v2

    const/16 v2, 0x31

    const/16 v3, 0x35

    aput-byte v3, v0, v2

    const/16 v2, 0x32

    const/16 v3, 0x36

    aput-byte v3, v0, v2

    const/16 v2, 0x33

    const/16 v3, 0x37

    aput-byte v3, v0, v2

    const/16 v2, 0x34

    const/16 v3, 0x38

    aput-byte v3, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x39

    aput-byte v3, v0, v2

    const/16 v2, 0x36

    const/16 v3, 0x3a

    aput-byte v3, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x3b

    aput-byte v3, v0, v2

    const/16 v2, 0x38

    const/16 v3, 0x3c

    aput-byte v3, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x3d

    aput-byte v3, v0, v2

    const/16 v2, 0x3a

    .line 273
    aput-byte v4, v0, v2

    const/16 v2, 0x3b

    aput-byte v4, v0, v2

    const/16 v2, 0x3c

    aput-byte v4, v0, v2

    const/16 v2, 0x3d

    .line 274
    const/4 v3, -0x1

    aput-byte v3, v0, v2

    const/16 v2, 0x3e

    .line 275
    aput-byte v4, v0, v2

    const/16 v2, 0x3f

    aput-byte v4, v0, v2

    const/16 v2, 0x40

    aput-byte v4, v0, v2

    const/16 v2, 0x42

    .line 276
    aput-byte v1, v0, v2

    const/16 v2, 0x43

    aput-byte v6, v0, v2

    const/16 v2, 0x44

    aput-byte v7, v0, v2

    const/16 v2, 0x45

    const/4 v3, 0x4

    aput-byte v3, v0, v2

    const/16 v2, 0x46

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    const/16 v2, 0x47

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    const/16 v2, 0x48

    const/4 v3, 0x7

    aput-byte v3, v0, v2

    const/16 v2, 0x49

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    const/16 v2, 0x4a

    const/16 v3, 0x9

    aput-byte v3, v0, v2

    const/16 v2, 0x4b

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    const/16 v2, 0x4c

    const/16 v3, 0xb

    aput-byte v3, v0, v2

    const/16 v2, 0x4d

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    const/16 v2, 0x4e

    const/16 v3, 0xd

    aput-byte v3, v0, v2

    const/16 v2, 0x4f

    .line 278
    const/16 v3, 0xe

    aput-byte v3, v0, v2

    const/16 v2, 0x50

    const/16 v3, 0xf

    aput-byte v3, v0, v2

    const/16 v2, 0x51

    const/16 v3, 0x10

    aput-byte v3, v0, v2

    const/16 v2, 0x52

    const/16 v3, 0x11

    aput-byte v3, v0, v2

    const/16 v2, 0x53

    const/16 v3, 0x12

    aput-byte v3, v0, v2

    const/16 v2, 0x54

    const/16 v3, 0x13

    aput-byte v3, v0, v2

    const/16 v2, 0x55

    const/16 v3, 0x14

    aput-byte v3, v0, v2

    const/16 v2, 0x56

    const/16 v3, 0x15

    aput-byte v3, v0, v2

    const/16 v2, 0x57

    const/16 v3, 0x16

    aput-byte v3, v0, v2

    const/16 v2, 0x58

    const/16 v3, 0x17

    aput-byte v3, v0, v2

    const/16 v2, 0x59

    const/16 v3, 0x18

    aput-byte v3, v0, v2

    const/16 v2, 0x5a

    const/16 v3, 0x19

    aput-byte v3, v0, v2

    const/16 v2, 0x5b

    .line 280
    aput-byte v4, v0, v2

    const/16 v2, 0x5c

    aput-byte v4, v0, v2

    const/16 v2, 0x5d

    aput-byte v4, v0, v2

    const/16 v2, 0x5e

    aput-byte v4, v0, v2

    const/16 v2, 0x5f

    aput-byte v4, v0, v2

    const/16 v2, 0x60

    aput-byte v4, v0, v2

    const/16 v2, 0x61

    .line 281
    const/16 v3, 0x1a

    aput-byte v3, v0, v2

    const/16 v2, 0x62

    const/16 v3, 0x1b

    aput-byte v3, v0, v2

    const/16 v2, 0x63

    const/16 v3, 0x1c

    aput-byte v3, v0, v2

    const/16 v2, 0x64

    const/16 v3, 0x1d

    aput-byte v3, v0, v2

    const/16 v2, 0x65

    const/16 v3, 0x1e

    aput-byte v3, v0, v2

    const/16 v2, 0x66

    const/16 v3, 0x1f

    aput-byte v3, v0, v2

    const/16 v2, 0x67

    const/16 v3, 0x20

    aput-byte v3, v0, v2

    const/16 v2, 0x68

    const/16 v3, 0x21

    aput-byte v3, v0, v2

    const/16 v2, 0x69

    const/16 v3, 0x22

    aput-byte v3, v0, v2

    const/16 v2, 0x6a

    const/16 v3, 0x23

    aput-byte v3, v0, v2

    const/16 v2, 0x6b

    const/16 v3, 0x24

    aput-byte v3, v0, v2

    const/16 v2, 0x6c

    const/16 v3, 0x25

    aput-byte v3, v0, v2

    const/16 v2, 0x6d

    const/16 v3, 0x26

    aput-byte v3, v0, v2

    const/16 v2, 0x6e

    .line 283
    const/16 v3, 0x27

    aput-byte v3, v0, v2

    const/16 v2, 0x6f

    const/16 v3, 0x28

    aput-byte v3, v0, v2

    const/16 v2, 0x70

    const/16 v3, 0x29

    aput-byte v3, v0, v2

    const/16 v2, 0x71

    const/16 v3, 0x2a

    aput-byte v3, v0, v2

    const/16 v2, 0x72

    const/16 v3, 0x2b

    aput-byte v3, v0, v2

    const/16 v2, 0x73

    const/16 v3, 0x2c

    aput-byte v3, v0, v2

    const/16 v2, 0x74

    const/16 v3, 0x2d

    aput-byte v3, v0, v2

    const/16 v2, 0x75

    const/16 v3, 0x2e

    aput-byte v3, v0, v2

    const/16 v2, 0x76

    const/16 v3, 0x2f

    aput-byte v3, v0, v2

    const/16 v2, 0x77

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    const/16 v2, 0x78

    const/16 v3, 0x31

    aput-byte v3, v0, v2

    const/16 v2, 0x79

    const/16 v3, 0x32

    aput-byte v3, v0, v2

    const/16 v2, 0x7a

    const/16 v3, 0x33

    aput-byte v3, v0, v2

    const/16 v2, 0x7b

    .line 285
    aput-byte v4, v0, v2

    const/16 v2, 0x7c

    aput-byte v4, v0, v2

    const/16 v2, 0x7d

    aput-byte v4, v0, v2

    const/16 v2, 0x7e

    aput-byte v4, v0, v2

    const/16 v2, 0x7f

    aput-byte v4, v0, v2

    const/16 v2, 0x80

    .line 286
    aput-byte v4, v0, v2

    const/16 v2, 0x81

    aput-byte v4, v0, v2

    const/16 v2, 0x82

    aput-byte v4, v0, v2

    const/16 v2, 0x83

    aput-byte v4, v0, v2

    const/16 v2, 0x84

    aput-byte v4, v0, v2

    const/16 v2, 0x85

    aput-byte v4, v0, v2

    const/16 v2, 0x86

    aput-byte v4, v0, v2

    const/16 v2, 0x87

    aput-byte v4, v0, v2

    const/16 v2, 0x88

    aput-byte v4, v0, v2

    const/16 v2, 0x89

    aput-byte v4, v0, v2

    const/16 v2, 0x8a

    aput-byte v4, v0, v2

    const/16 v2, 0x8b

    aput-byte v4, v0, v2

    const/16 v2, 0x8c

    .line 288
    aput-byte v4, v0, v2

    const/16 v2, 0x8d

    aput-byte v4, v0, v2

    const/16 v2, 0x8e

    aput-byte v4, v0, v2

    const/16 v2, 0x8f

    aput-byte v4, v0, v2

    const/16 v2, 0x90

    aput-byte v4, v0, v2

    const/16 v2, 0x91

    aput-byte v4, v0, v2

    const/16 v2, 0x92

    aput-byte v4, v0, v2

    const/16 v2, 0x93

    aput-byte v4, v0, v2

    const/16 v2, 0x94

    aput-byte v4, v0, v2

    const/16 v2, 0x95

    aput-byte v4, v0, v2

    const/16 v2, 0x96

    aput-byte v4, v0, v2

    const/16 v2, 0x97

    aput-byte v4, v0, v2

    const/16 v2, 0x98

    aput-byte v4, v0, v2

    const/16 v2, 0x99

    .line 290
    aput-byte v4, v0, v2

    const/16 v2, 0x9a

    aput-byte v4, v0, v2

    const/16 v2, 0x9b

    aput-byte v4, v0, v2

    const/16 v2, 0x9c

    aput-byte v4, v0, v2

    const/16 v2, 0x9d

    aput-byte v4, v0, v2

    const/16 v2, 0x9e

    aput-byte v4, v0, v2

    const/16 v2, 0x9f

    aput-byte v4, v0, v2

    const/16 v2, 0xa0

    aput-byte v4, v0, v2

    const/16 v2, 0xa1

    aput-byte v4, v0, v2

    const/16 v2, 0xa2

    aput-byte v4, v0, v2

    const/16 v2, 0xa3

    aput-byte v4, v0, v2

    const/16 v2, 0xa4

    aput-byte v4, v0, v2

    const/16 v2, 0xa5

    aput-byte v4, v0, v2

    const/16 v2, 0xa6

    .line 292
    aput-byte v4, v0, v2

    const/16 v2, 0xa7

    aput-byte v4, v0, v2

    const/16 v2, 0xa8

    aput-byte v4, v0, v2

    const/16 v2, 0xa9

    aput-byte v4, v0, v2

    const/16 v2, 0xaa

    aput-byte v4, v0, v2

    const/16 v2, 0xab

    aput-byte v4, v0, v2

    const/16 v2, 0xac

    aput-byte v4, v0, v2

    const/16 v2, 0xad

    aput-byte v4, v0, v2

    const/16 v2, 0xae

    aput-byte v4, v0, v2

    const/16 v2, 0xaf

    aput-byte v4, v0, v2

    const/16 v2, 0xb0

    aput-byte v4, v0, v2

    const/16 v2, 0xb1

    aput-byte v4, v0, v2

    const/16 v2, 0xb2

    aput-byte v4, v0, v2

    const/16 v2, 0xb3

    .line 294
    aput-byte v4, v0, v2

    const/16 v2, 0xb4

    aput-byte v4, v0, v2

    const/16 v2, 0xb5

    aput-byte v4, v0, v2

    const/16 v2, 0xb6

    aput-byte v4, v0, v2

    const/16 v2, 0xb7

    aput-byte v4, v0, v2

    const/16 v2, 0xb8

    aput-byte v4, v0, v2

    const/16 v2, 0xb9

    aput-byte v4, v0, v2

    const/16 v2, 0xba

    aput-byte v4, v0, v2

    const/16 v2, 0xbb

    aput-byte v4, v0, v2

    const/16 v2, 0xbc

    aput-byte v4, v0, v2

    const/16 v2, 0xbd

    aput-byte v4, v0, v2

    const/16 v2, 0xbe

    aput-byte v4, v0, v2

    const/16 v2, 0xbf

    aput-byte v4, v0, v2

    const/16 v2, 0xc0

    .line 296
    aput-byte v4, v0, v2

    const/16 v2, 0xc1

    aput-byte v4, v0, v2

    const/16 v2, 0xc2

    aput-byte v4, v0, v2

    const/16 v2, 0xc3

    aput-byte v4, v0, v2

    const/16 v2, 0xc4

    aput-byte v4, v0, v2

    const/16 v2, 0xc5

    aput-byte v4, v0, v2

    const/16 v2, 0xc6

    aput-byte v4, v0, v2

    const/16 v2, 0xc7

    aput-byte v4, v0, v2

    const/16 v2, 0xc8

    aput-byte v4, v0, v2

    const/16 v2, 0xc9

    aput-byte v4, v0, v2

    const/16 v2, 0xca

    aput-byte v4, v0, v2

    const/16 v2, 0xcb

    aput-byte v4, v0, v2

    const/16 v2, 0xcc

    aput-byte v4, v0, v2

    const/16 v2, 0xcd

    .line 298
    aput-byte v4, v0, v2

    const/16 v2, 0xce

    aput-byte v4, v0, v2

    const/16 v2, 0xcf

    aput-byte v4, v0, v2

    const/16 v2, 0xd0

    aput-byte v4, v0, v2

    const/16 v2, 0xd1

    aput-byte v4, v0, v2

    const/16 v2, 0xd2

    aput-byte v4, v0, v2

    const/16 v2, 0xd3

    aput-byte v4, v0, v2

    const/16 v2, 0xd4

    aput-byte v4, v0, v2

    const/16 v2, 0xd5

    aput-byte v4, v0, v2

    const/16 v2, 0xd6

    aput-byte v4, v0, v2

    const/16 v2, 0xd7

    aput-byte v4, v0, v2

    const/16 v2, 0xd8

    aput-byte v4, v0, v2

    const/16 v2, 0xd9

    aput-byte v4, v0, v2

    const/16 v2, 0xda

    .line 300
    aput-byte v4, v0, v2

    const/16 v2, 0xdb

    aput-byte v4, v0, v2

    const/16 v2, 0xdc

    aput-byte v4, v0, v2

    const/16 v2, 0xdd

    aput-byte v4, v0, v2

    const/16 v2, 0xde

    aput-byte v4, v0, v2

    const/16 v2, 0xdf

    aput-byte v4, v0, v2

    const/16 v2, 0xe0

    aput-byte v4, v0, v2

    const/16 v2, 0xe1

    aput-byte v4, v0, v2

    const/16 v2, 0xe2

    aput-byte v4, v0, v2

    const/16 v2, 0xe3

    aput-byte v4, v0, v2

    const/16 v2, 0xe4

    aput-byte v4, v0, v2

    const/16 v2, 0xe5

    aput-byte v4, v0, v2

    const/16 v2, 0xe6

    aput-byte v4, v0, v2

    const/16 v2, 0xe7

    .line 302
    aput-byte v4, v0, v2

    const/16 v2, 0xe8

    aput-byte v4, v0, v2

    const/16 v2, 0xe9

    aput-byte v4, v0, v2

    const/16 v2, 0xea

    aput-byte v4, v0, v2

    const/16 v2, 0xeb

    aput-byte v4, v0, v2

    const/16 v2, 0xec

    aput-byte v4, v0, v2

    const/16 v2, 0xed

    aput-byte v4, v0, v2

    const/16 v2, 0xee

    aput-byte v4, v0, v2

    const/16 v2, 0xef

    aput-byte v4, v0, v2

    const/16 v2, 0xf0

    aput-byte v4, v0, v2

    const/16 v2, 0xf1

    aput-byte v4, v0, v2

    const/16 v2, 0xf2

    aput-byte v4, v0, v2

    const/16 v2, 0xf3

    aput-byte v4, v0, v2

    const/16 v2, 0xf4

    .line 304
    aput-byte v4, v0, v2

    const/16 v2, 0xf5

    aput-byte v4, v0, v2

    const/16 v2, 0xf6

    aput-byte v4, v0, v2

    const/16 v2, 0xf7

    aput-byte v4, v0, v2

    const/16 v2, 0xf8

    aput-byte v4, v0, v2

    const/16 v2, 0xf9

    aput-byte v4, v0, v2

    const/16 v2, 0xfa

    aput-byte v4, v0, v2

    const/16 v2, 0xfb

    aput-byte v4, v0, v2

    const/16 v2, 0xfc

    aput-byte v4, v0, v2

    const/16 v2, 0xfd

    aput-byte v4, v0, v2

    const/16 v2, 0xfe

    aput-byte v4, v0, v2

    const/16 v2, 0xff

    aput-byte v4, v0, v2

    .line 259
    sput-object v0, Lcom/mdotm/android/utils/MdotMBase64;->_STANDARD_DECODABET:[B

    .line 316
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mdotm/android/utils/MdotMBase64;->_URL_SAFE_ALPHABET:[B

    .line 334
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aput-byte v4, v0, v2

    const/4 v2, 0x6

    .line 335
    aput-byte v4, v0, v2

    const/4 v2, 0x7

    aput-byte v4, v0, v2

    const/16 v2, 0x8

    aput-byte v4, v0, v2

    const/16 v2, 0x9

    .line 336
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 337
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 338
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 339
    aput-byte v4, v0, v2

    const/16 v2, 0xf

    aput-byte v4, v0, v2

    const/16 v2, 0x10

    aput-byte v4, v0, v2

    const/16 v2, 0x11

    aput-byte v4, v0, v2

    const/16 v2, 0x12

    aput-byte v4, v0, v2

    const/16 v2, 0x13

    aput-byte v4, v0, v2

    const/16 v2, 0x14

    aput-byte v4, v0, v2

    const/16 v2, 0x15

    aput-byte v4, v0, v2

    const/16 v2, 0x16

    aput-byte v4, v0, v2

    const/16 v2, 0x17

    aput-byte v4, v0, v2

    const/16 v2, 0x18

    aput-byte v4, v0, v2

    const/16 v2, 0x19

    aput-byte v4, v0, v2

    const/16 v2, 0x1a

    aput-byte v4, v0, v2

    const/16 v2, 0x1b

    .line 341
    aput-byte v4, v0, v2

    const/16 v2, 0x1c

    aput-byte v4, v0, v2

    const/16 v2, 0x1d

    aput-byte v4, v0, v2

    const/16 v2, 0x1e

    aput-byte v4, v0, v2

    const/16 v2, 0x1f

    aput-byte v4, v0, v2

    const/16 v2, 0x20

    .line 342
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 343
    aput-byte v4, v0, v2

    const/16 v2, 0x22

    aput-byte v4, v0, v2

    const/16 v2, 0x23

    aput-byte v4, v0, v2

    const/16 v2, 0x24

    aput-byte v4, v0, v2

    const/16 v2, 0x25

    aput-byte v4, v0, v2

    const/16 v2, 0x26

    aput-byte v4, v0, v2

    const/16 v2, 0x27

    aput-byte v4, v0, v2

    const/16 v2, 0x28

    aput-byte v4, v0, v2

    const/16 v2, 0x29

    aput-byte v4, v0, v2

    const/16 v2, 0x2a

    aput-byte v4, v0, v2

    const/16 v2, 0x2b

    .line 344
    aput-byte v4, v0, v2

    const/16 v2, 0x2c

    .line 345
    aput-byte v4, v0, v2

    const/16 v2, 0x2d

    .line 346
    const/16 v3, 0x3e

    aput-byte v3, v0, v2

    const/16 v2, 0x2e

    .line 347
    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 348
    aput-byte v4, v0, v2

    const/16 v2, 0x30

    .line 349
    const/16 v3, 0x34

    aput-byte v3, v0, v2

    const/16 v2, 0x31

    const/16 v3, 0x35

    aput-byte v3, v0, v2

    const/16 v2, 0x32

    const/16 v3, 0x36

    aput-byte v3, v0, v2

    const/16 v2, 0x33

    const/16 v3, 0x37

    aput-byte v3, v0, v2

    const/16 v2, 0x34

    const/16 v3, 0x38

    aput-byte v3, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x39

    aput-byte v3, v0, v2

    const/16 v2, 0x36

    const/16 v3, 0x3a

    aput-byte v3, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x3b

    aput-byte v3, v0, v2

    const/16 v2, 0x38

    const/16 v3, 0x3c

    aput-byte v3, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x3d

    aput-byte v3, v0, v2

    const/16 v2, 0x3a

    .line 350
    aput-byte v4, v0, v2

    const/16 v2, 0x3b

    aput-byte v4, v0, v2

    const/16 v2, 0x3c

    aput-byte v4, v0, v2

    const/16 v2, 0x3d

    .line 351
    const/4 v3, -0x1

    aput-byte v3, v0, v2

    const/16 v2, 0x3e

    .line 352
    aput-byte v4, v0, v2

    const/16 v2, 0x3f

    aput-byte v4, v0, v2

    const/16 v2, 0x40

    aput-byte v4, v0, v2

    const/16 v2, 0x42

    .line 353
    aput-byte v1, v0, v2

    const/16 v2, 0x43

    aput-byte v6, v0, v2

    const/16 v2, 0x44

    aput-byte v7, v0, v2

    const/16 v2, 0x45

    const/4 v3, 0x4

    aput-byte v3, v0, v2

    const/16 v2, 0x46

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    const/16 v2, 0x47

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    const/16 v2, 0x48

    const/4 v3, 0x7

    aput-byte v3, v0, v2

    const/16 v2, 0x49

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    const/16 v2, 0x4a

    const/16 v3, 0x9

    aput-byte v3, v0, v2

    const/16 v2, 0x4b

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    const/16 v2, 0x4c

    const/16 v3, 0xb

    aput-byte v3, v0, v2

    const/16 v2, 0x4d

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    const/16 v2, 0x4e

    const/16 v3, 0xd

    aput-byte v3, v0, v2

    const/16 v2, 0x4f

    .line 355
    const/16 v3, 0xe

    aput-byte v3, v0, v2

    const/16 v2, 0x50

    const/16 v3, 0xf

    aput-byte v3, v0, v2

    const/16 v2, 0x51

    const/16 v3, 0x10

    aput-byte v3, v0, v2

    const/16 v2, 0x52

    const/16 v3, 0x11

    aput-byte v3, v0, v2

    const/16 v2, 0x53

    const/16 v3, 0x12

    aput-byte v3, v0, v2

    const/16 v2, 0x54

    const/16 v3, 0x13

    aput-byte v3, v0, v2

    const/16 v2, 0x55

    const/16 v3, 0x14

    aput-byte v3, v0, v2

    const/16 v2, 0x56

    const/16 v3, 0x15

    aput-byte v3, v0, v2

    const/16 v2, 0x57

    const/16 v3, 0x16

    aput-byte v3, v0, v2

    const/16 v2, 0x58

    const/16 v3, 0x17

    aput-byte v3, v0, v2

    const/16 v2, 0x59

    const/16 v3, 0x18

    aput-byte v3, v0, v2

    const/16 v2, 0x5a

    const/16 v3, 0x19

    aput-byte v3, v0, v2

    const/16 v2, 0x5b

    .line 357
    aput-byte v4, v0, v2

    const/16 v2, 0x5c

    aput-byte v4, v0, v2

    const/16 v2, 0x5d

    aput-byte v4, v0, v2

    const/16 v2, 0x5e

    aput-byte v4, v0, v2

    const/16 v2, 0x5f

    .line 358
    const/16 v3, 0x3f

    aput-byte v3, v0, v2

    const/16 v2, 0x60

    .line 359
    aput-byte v4, v0, v2

    const/16 v2, 0x61

    .line 360
    const/16 v3, 0x1a

    aput-byte v3, v0, v2

    const/16 v2, 0x62

    const/16 v3, 0x1b

    aput-byte v3, v0, v2

    const/16 v2, 0x63

    const/16 v3, 0x1c

    aput-byte v3, v0, v2

    const/16 v2, 0x64

    const/16 v3, 0x1d

    aput-byte v3, v0, v2

    const/16 v2, 0x65

    const/16 v3, 0x1e

    aput-byte v3, v0, v2

    const/16 v2, 0x66

    const/16 v3, 0x1f

    aput-byte v3, v0, v2

    const/16 v2, 0x67

    const/16 v3, 0x20

    aput-byte v3, v0, v2

    const/16 v2, 0x68

    const/16 v3, 0x21

    aput-byte v3, v0, v2

    const/16 v2, 0x69

    const/16 v3, 0x22

    aput-byte v3, v0, v2

    const/16 v2, 0x6a

    const/16 v3, 0x23

    aput-byte v3, v0, v2

    const/16 v2, 0x6b

    const/16 v3, 0x24

    aput-byte v3, v0, v2

    const/16 v2, 0x6c

    const/16 v3, 0x25

    aput-byte v3, v0, v2

    const/16 v2, 0x6d

    const/16 v3, 0x26

    aput-byte v3, v0, v2

    const/16 v2, 0x6e

    .line 362
    const/16 v3, 0x27

    aput-byte v3, v0, v2

    const/16 v2, 0x6f

    const/16 v3, 0x28

    aput-byte v3, v0, v2

    const/16 v2, 0x70

    const/16 v3, 0x29

    aput-byte v3, v0, v2

    const/16 v2, 0x71

    const/16 v3, 0x2a

    aput-byte v3, v0, v2

    const/16 v2, 0x72

    const/16 v3, 0x2b

    aput-byte v3, v0, v2

    const/16 v2, 0x73

    const/16 v3, 0x2c

    aput-byte v3, v0, v2

    const/16 v2, 0x74

    const/16 v3, 0x2d

    aput-byte v3, v0, v2

    const/16 v2, 0x75

    const/16 v3, 0x2e

    aput-byte v3, v0, v2

    const/16 v2, 0x76

    const/16 v3, 0x2f

    aput-byte v3, v0, v2

    const/16 v2, 0x77

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    const/16 v2, 0x78

    const/16 v3, 0x31

    aput-byte v3, v0, v2

    const/16 v2, 0x79

    const/16 v3, 0x32

    aput-byte v3, v0, v2

    const/16 v2, 0x7a

    const/16 v3, 0x33

    aput-byte v3, v0, v2

    const/16 v2, 0x7b

    .line 364
    aput-byte v4, v0, v2

    const/16 v2, 0x7c

    aput-byte v4, v0, v2

    const/16 v2, 0x7d

    aput-byte v4, v0, v2

    const/16 v2, 0x7e

    aput-byte v4, v0, v2

    const/16 v2, 0x7f

    aput-byte v4, v0, v2

    const/16 v2, 0x80

    .line 365
    aput-byte v4, v0, v2

    const/16 v2, 0x81

    aput-byte v4, v0, v2

    const/16 v2, 0x82

    aput-byte v4, v0, v2

    const/16 v2, 0x83

    aput-byte v4, v0, v2

    const/16 v2, 0x84

    aput-byte v4, v0, v2

    const/16 v2, 0x85

    aput-byte v4, v0, v2

    const/16 v2, 0x86

    aput-byte v4, v0, v2

    const/16 v2, 0x87

    aput-byte v4, v0, v2

    const/16 v2, 0x88

    aput-byte v4, v0, v2

    const/16 v2, 0x89

    aput-byte v4, v0, v2

    const/16 v2, 0x8a

    aput-byte v4, v0, v2

    const/16 v2, 0x8b

    aput-byte v4, v0, v2

    const/16 v2, 0x8c

    .line 367
    aput-byte v4, v0, v2

    const/16 v2, 0x8d

    aput-byte v4, v0, v2

    const/16 v2, 0x8e

    aput-byte v4, v0, v2

    const/16 v2, 0x8f

    aput-byte v4, v0, v2

    const/16 v2, 0x90

    aput-byte v4, v0, v2

    const/16 v2, 0x91

    aput-byte v4, v0, v2

    const/16 v2, 0x92

    aput-byte v4, v0, v2

    const/16 v2, 0x93

    aput-byte v4, v0, v2

    const/16 v2, 0x94

    aput-byte v4, v0, v2

    const/16 v2, 0x95

    aput-byte v4, v0, v2

    const/16 v2, 0x96

    aput-byte v4, v0, v2

    const/16 v2, 0x97

    aput-byte v4, v0, v2

    const/16 v2, 0x98

    aput-byte v4, v0, v2

    const/16 v2, 0x99

    .line 369
    aput-byte v4, v0, v2

    const/16 v2, 0x9a

    aput-byte v4, v0, v2

    const/16 v2, 0x9b

    aput-byte v4, v0, v2

    const/16 v2, 0x9c

    aput-byte v4, v0, v2

    const/16 v2, 0x9d

    aput-byte v4, v0, v2

    const/16 v2, 0x9e

    aput-byte v4, v0, v2

    const/16 v2, 0x9f

    aput-byte v4, v0, v2

    const/16 v2, 0xa0

    aput-byte v4, v0, v2

    const/16 v2, 0xa1

    aput-byte v4, v0, v2

    const/16 v2, 0xa2

    aput-byte v4, v0, v2

    const/16 v2, 0xa3

    aput-byte v4, v0, v2

    const/16 v2, 0xa4

    aput-byte v4, v0, v2

    const/16 v2, 0xa5

    aput-byte v4, v0, v2

    const/16 v2, 0xa6

    .line 371
    aput-byte v4, v0, v2

    const/16 v2, 0xa7

    aput-byte v4, v0, v2

    const/16 v2, 0xa8

    aput-byte v4, v0, v2

    const/16 v2, 0xa9

    aput-byte v4, v0, v2

    const/16 v2, 0xaa

    aput-byte v4, v0, v2

    const/16 v2, 0xab

    aput-byte v4, v0, v2

    const/16 v2, 0xac

    aput-byte v4, v0, v2

    const/16 v2, 0xad

    aput-byte v4, v0, v2

    const/16 v2, 0xae

    aput-byte v4, v0, v2

    const/16 v2, 0xaf

    aput-byte v4, v0, v2

    const/16 v2, 0xb0

    aput-byte v4, v0, v2

    const/16 v2, 0xb1

    aput-byte v4, v0, v2

    const/16 v2, 0xb2

    aput-byte v4, v0, v2

    const/16 v2, 0xb3

    .line 373
    aput-byte v4, v0, v2

    const/16 v2, 0xb4

    aput-byte v4, v0, v2

    const/16 v2, 0xb5

    aput-byte v4, v0, v2

    const/16 v2, 0xb6

    aput-byte v4, v0, v2

    const/16 v2, 0xb7

    aput-byte v4, v0, v2

    const/16 v2, 0xb8

    aput-byte v4, v0, v2

    const/16 v2, 0xb9

    aput-byte v4, v0, v2

    const/16 v2, 0xba

    aput-byte v4, v0, v2

    const/16 v2, 0xbb

    aput-byte v4, v0, v2

    const/16 v2, 0xbc

    aput-byte v4, v0, v2

    const/16 v2, 0xbd

    aput-byte v4, v0, v2

    const/16 v2, 0xbe

    aput-byte v4, v0, v2

    const/16 v2, 0xbf

    aput-byte v4, v0, v2

    const/16 v2, 0xc0

    .line 375
    aput-byte v4, v0, v2

    const/16 v2, 0xc1

    aput-byte v4, v0, v2

    const/16 v2, 0xc2

    aput-byte v4, v0, v2

    const/16 v2, 0xc3

    aput-byte v4, v0, v2

    const/16 v2, 0xc4

    aput-byte v4, v0, v2

    const/16 v2, 0xc5

    aput-byte v4, v0, v2

    const/16 v2, 0xc6

    aput-byte v4, v0, v2

    const/16 v2, 0xc7

    aput-byte v4, v0, v2

    const/16 v2, 0xc8

    aput-byte v4, v0, v2

    const/16 v2, 0xc9

    aput-byte v4, v0, v2

    const/16 v2, 0xca

    aput-byte v4, v0, v2

    const/16 v2, 0xcb

    aput-byte v4, v0, v2

    const/16 v2, 0xcc

    aput-byte v4, v0, v2

    const/16 v2, 0xcd

    .line 377
    aput-byte v4, v0, v2

    const/16 v2, 0xce

    aput-byte v4, v0, v2

    const/16 v2, 0xcf

    aput-byte v4, v0, v2

    const/16 v2, 0xd0

    aput-byte v4, v0, v2

    const/16 v2, 0xd1

    aput-byte v4, v0, v2

    const/16 v2, 0xd2

    aput-byte v4, v0, v2

    const/16 v2, 0xd3

    aput-byte v4, v0, v2

    const/16 v2, 0xd4

    aput-byte v4, v0, v2

    const/16 v2, 0xd5

    aput-byte v4, v0, v2

    const/16 v2, 0xd6

    aput-byte v4, v0, v2

    const/16 v2, 0xd7

    aput-byte v4, v0, v2

    const/16 v2, 0xd8

    aput-byte v4, v0, v2

    const/16 v2, 0xd9

    aput-byte v4, v0, v2

    const/16 v2, 0xda

    .line 379
    aput-byte v4, v0, v2

    const/16 v2, 0xdb

    aput-byte v4, v0, v2

    const/16 v2, 0xdc

    aput-byte v4, v0, v2

    const/16 v2, 0xdd

    aput-byte v4, v0, v2

    const/16 v2, 0xde

    aput-byte v4, v0, v2

    const/16 v2, 0xdf

    aput-byte v4, v0, v2

    const/16 v2, 0xe0

    aput-byte v4, v0, v2

    const/16 v2, 0xe1

    aput-byte v4, v0, v2

    const/16 v2, 0xe2

    aput-byte v4, v0, v2

    const/16 v2, 0xe3

    aput-byte v4, v0, v2

    const/16 v2, 0xe4

    aput-byte v4, v0, v2

    const/16 v2, 0xe5

    aput-byte v4, v0, v2

    const/16 v2, 0xe6

    aput-byte v4, v0, v2

    const/16 v2, 0xe7

    .line 381
    aput-byte v4, v0, v2

    const/16 v2, 0xe8

    aput-byte v4, v0, v2

    const/16 v2, 0xe9

    aput-byte v4, v0, v2

    const/16 v2, 0xea

    aput-byte v4, v0, v2

    const/16 v2, 0xeb

    aput-byte v4, v0, v2

    const/16 v2, 0xec

    aput-byte v4, v0, v2

    const/16 v2, 0xed

    aput-byte v4, v0, v2

    const/16 v2, 0xee

    aput-byte v4, v0, v2

    const/16 v2, 0xef

    aput-byte v4, v0, v2

    const/16 v2, 0xf0

    aput-byte v4, v0, v2

    const/16 v2, 0xf1

    aput-byte v4, v0, v2

    const/16 v2, 0xf2

    aput-byte v4, v0, v2

    const/16 v2, 0xf3

    aput-byte v4, v0, v2

    const/16 v2, 0xf4

    .line 383
    aput-byte v4, v0, v2

    const/16 v2, 0xf5

    aput-byte v4, v0, v2

    const/16 v2, 0xf6

    aput-byte v4, v0, v2

    const/16 v2, 0xf7

    aput-byte v4, v0, v2

    const/16 v2, 0xf8

    aput-byte v4, v0, v2

    const/16 v2, 0xf9

    aput-byte v4, v0, v2

    const/16 v2, 0xfa

    aput-byte v4, v0, v2

    const/16 v2, 0xfb

    aput-byte v4, v0, v2

    const/16 v2, 0xfc

    aput-byte v4, v0, v2

    const/16 v2, 0xfd

    aput-byte v4, v0, v2

    const/16 v2, 0xfe

    aput-byte v4, v0, v2

    const/16 v2, 0xff

    aput-byte v4, v0, v2

    .line 334
    sput-object v0, Lcom/mdotm/android/utils/MdotMBase64;->_URL_SAFE_DECODABET:[B

    .line 394
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mdotm/android/utils/MdotMBase64;->_ORDERED_ALPHABET:[B

    .line 412
    const/16 v0, 0x101

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aput-byte v4, v0, v2

    const/4 v2, 0x6

    .line 413
    aput-byte v4, v0, v2

    const/4 v2, 0x7

    aput-byte v4, v0, v2

    const/16 v2, 0x8

    aput-byte v4, v0, v2

    const/16 v2, 0x9

    .line 414
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 415
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 416
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 417
    aput-byte v4, v0, v2

    const/16 v2, 0xf

    aput-byte v4, v0, v2

    const/16 v2, 0x10

    aput-byte v4, v0, v2

    const/16 v2, 0x11

    aput-byte v4, v0, v2

    const/16 v2, 0x12

    aput-byte v4, v0, v2

    const/16 v2, 0x13

    aput-byte v4, v0, v2

    const/16 v2, 0x14

    aput-byte v4, v0, v2

    const/16 v2, 0x15

    aput-byte v4, v0, v2

    const/16 v2, 0x16

    aput-byte v4, v0, v2

    const/16 v2, 0x17

    aput-byte v4, v0, v2

    const/16 v2, 0x18

    aput-byte v4, v0, v2

    const/16 v2, 0x19

    aput-byte v4, v0, v2

    const/16 v2, 0x1a

    aput-byte v4, v0, v2

    const/16 v2, 0x1b

    .line 419
    aput-byte v4, v0, v2

    const/16 v2, 0x1c

    aput-byte v4, v0, v2

    const/16 v2, 0x1d

    aput-byte v4, v0, v2

    const/16 v2, 0x1e

    aput-byte v4, v0, v2

    const/16 v2, 0x1f

    aput-byte v4, v0, v2

    const/16 v2, 0x20

    .line 420
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 421
    aput-byte v4, v0, v2

    const/16 v2, 0x22

    aput-byte v4, v0, v2

    const/16 v2, 0x23

    aput-byte v4, v0, v2

    const/16 v2, 0x24

    aput-byte v4, v0, v2

    const/16 v2, 0x25

    aput-byte v4, v0, v2

    const/16 v2, 0x26

    aput-byte v4, v0, v2

    const/16 v2, 0x27

    aput-byte v4, v0, v2

    const/16 v2, 0x28

    aput-byte v4, v0, v2

    const/16 v2, 0x29

    aput-byte v4, v0, v2

    const/16 v2, 0x2a

    aput-byte v4, v0, v2

    const/16 v2, 0x2b

    .line 422
    aput-byte v4, v0, v2

    const/16 v2, 0x2c

    .line 423
    aput-byte v4, v0, v2

    const/16 v2, 0x2e

    .line 425
    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 426
    aput-byte v4, v0, v2

    const/16 v2, 0x30

    .line 427
    aput-byte v1, v0, v2

    const/16 v1, 0x31

    aput-byte v6, v0, v1

    const/16 v1, 0x32

    aput-byte v7, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 428
    aput-byte v4, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    aput-byte v4, v0, v1

    const/16 v1, 0x3d

    .line 429
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 430
    aput-byte v4, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    aput-byte v4, v0, v1

    const/16 v1, 0x41

    .line 431
    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    .line 433
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 435
    aput-byte v4, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    aput-byte v4, v0, v1

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    const/16 v1, 0x5f

    .line 436
    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 437
    aput-byte v4, v0, v1

    const/16 v1, 0x61

    .line 438
    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 440
    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 442
    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    const/16 v1, 0x80

    .line 443
    aput-byte v4, v0, v1

    const/16 v1, 0x81

    aput-byte v4, v0, v1

    const/16 v1, 0x82

    aput-byte v4, v0, v1

    const/16 v1, 0x83

    aput-byte v4, v0, v1

    const/16 v1, 0x84

    aput-byte v4, v0, v1

    const/16 v1, 0x85

    aput-byte v4, v0, v1

    const/16 v1, 0x86

    aput-byte v4, v0, v1

    const/16 v1, 0x87

    aput-byte v4, v0, v1

    const/16 v1, 0x88

    aput-byte v4, v0, v1

    const/16 v1, 0x89

    aput-byte v4, v0, v1

    const/16 v1, 0x8a

    aput-byte v4, v0, v1

    const/16 v1, 0x8b

    aput-byte v4, v0, v1

    const/16 v1, 0x8c

    aput-byte v4, v0, v1

    const/16 v1, 0x8d

    .line 445
    aput-byte v4, v0, v1

    const/16 v1, 0x8e

    aput-byte v4, v0, v1

    const/16 v1, 0x8f

    aput-byte v4, v0, v1

    const/16 v1, 0x90

    aput-byte v4, v0, v1

    const/16 v1, 0x91

    aput-byte v4, v0, v1

    const/16 v1, 0x92

    aput-byte v4, v0, v1

    const/16 v1, 0x93

    aput-byte v4, v0, v1

    const/16 v1, 0x94

    aput-byte v4, v0, v1

    const/16 v1, 0x95

    aput-byte v4, v0, v1

    const/16 v1, 0x96

    aput-byte v4, v0, v1

    const/16 v1, 0x97

    aput-byte v4, v0, v1

    const/16 v1, 0x98

    aput-byte v4, v0, v1

    const/16 v1, 0x99

    aput-byte v4, v0, v1

    const/16 v1, 0x9a

    .line 447
    aput-byte v4, v0, v1

    const/16 v1, 0x9b

    aput-byte v4, v0, v1

    const/16 v1, 0x9c

    aput-byte v4, v0, v1

    const/16 v1, 0x9d

    aput-byte v4, v0, v1

    const/16 v1, 0x9e

    aput-byte v4, v0, v1

    const/16 v1, 0x9f

    aput-byte v4, v0, v1

    const/16 v1, 0xa0

    aput-byte v4, v0, v1

    const/16 v1, 0xa1

    aput-byte v4, v0, v1

    const/16 v1, 0xa2

    aput-byte v4, v0, v1

    const/16 v1, 0xa3

    aput-byte v4, v0, v1

    const/16 v1, 0xa4

    aput-byte v4, v0, v1

    const/16 v1, 0xa5

    aput-byte v4, v0, v1

    const/16 v1, 0xa6

    aput-byte v4, v0, v1

    const/16 v1, 0xa7

    .line 449
    aput-byte v4, v0, v1

    const/16 v1, 0xa8

    aput-byte v4, v0, v1

    const/16 v1, 0xa9

    aput-byte v4, v0, v1

    const/16 v1, 0xaa

    aput-byte v4, v0, v1

    const/16 v1, 0xab

    aput-byte v4, v0, v1

    const/16 v1, 0xac

    aput-byte v4, v0, v1

    const/16 v1, 0xad

    aput-byte v4, v0, v1

    const/16 v1, 0xae

    aput-byte v4, v0, v1

    const/16 v1, 0xaf

    aput-byte v4, v0, v1

    const/16 v1, 0xb0

    aput-byte v4, v0, v1

    const/16 v1, 0xb1

    aput-byte v4, v0, v1

    const/16 v1, 0xb2

    aput-byte v4, v0, v1

    const/16 v1, 0xb3

    aput-byte v4, v0, v1

    const/16 v1, 0xb4

    .line 451
    aput-byte v4, v0, v1

    const/16 v1, 0xb5

    aput-byte v4, v0, v1

    const/16 v1, 0xb6

    aput-byte v4, v0, v1

    const/16 v1, 0xb7

    aput-byte v4, v0, v1

    const/16 v1, 0xb8

    aput-byte v4, v0, v1

    const/16 v1, 0xb9

    aput-byte v4, v0, v1

    const/16 v1, 0xba

    aput-byte v4, v0, v1

    const/16 v1, 0xbb

    aput-byte v4, v0, v1

    const/16 v1, 0xbc

    aput-byte v4, v0, v1

    const/16 v1, 0xbd

    aput-byte v4, v0, v1

    const/16 v1, 0xbe

    aput-byte v4, v0, v1

    const/16 v1, 0xbf

    aput-byte v4, v0, v1

    const/16 v1, 0xc0

    aput-byte v4, v0, v1

    const/16 v1, 0xc1

    .line 453
    aput-byte v4, v0, v1

    const/16 v1, 0xc2

    aput-byte v4, v0, v1

    const/16 v1, 0xc3

    aput-byte v4, v0, v1

    const/16 v1, 0xc4

    aput-byte v4, v0, v1

    const/16 v1, 0xc5

    aput-byte v4, v0, v1

    const/16 v1, 0xc6

    aput-byte v4, v0, v1

    const/16 v1, 0xc7

    aput-byte v4, v0, v1

    const/16 v1, 0xc8

    aput-byte v4, v0, v1

    const/16 v1, 0xc9

    aput-byte v4, v0, v1

    const/16 v1, 0xca

    aput-byte v4, v0, v1

    const/16 v1, 0xcb

    aput-byte v4, v0, v1

    const/16 v1, 0xcc

    aput-byte v4, v0, v1

    const/16 v1, 0xcd

    aput-byte v4, v0, v1

    const/16 v1, 0xce

    .line 455
    aput-byte v4, v0, v1

    const/16 v1, 0xcf

    aput-byte v4, v0, v1

    const/16 v1, 0xd0

    aput-byte v4, v0, v1

    const/16 v1, 0xd1

    aput-byte v4, v0, v1

    const/16 v1, 0xd2

    aput-byte v4, v0, v1

    const/16 v1, 0xd3

    aput-byte v4, v0, v1

    const/16 v1, 0xd4

    aput-byte v4, v0, v1

    const/16 v1, 0xd5

    aput-byte v4, v0, v1

    const/16 v1, 0xd6

    aput-byte v4, v0, v1

    const/16 v1, 0xd7

    aput-byte v4, v0, v1

    const/16 v1, 0xd8

    aput-byte v4, v0, v1

    const/16 v1, 0xd9

    aput-byte v4, v0, v1

    const/16 v1, 0xda

    aput-byte v4, v0, v1

    const/16 v1, 0xdb

    .line 457
    aput-byte v4, v0, v1

    const/16 v1, 0xdc

    aput-byte v4, v0, v1

    const/16 v1, 0xdd

    aput-byte v4, v0, v1

    const/16 v1, 0xde

    aput-byte v4, v0, v1

    const/16 v1, 0xdf

    aput-byte v4, v0, v1

    const/16 v1, 0xe0

    aput-byte v4, v0, v1

    const/16 v1, 0xe1

    aput-byte v4, v0, v1

    const/16 v1, 0xe2

    aput-byte v4, v0, v1

    const/16 v1, 0xe3

    aput-byte v4, v0, v1

    const/16 v1, 0xe4

    aput-byte v4, v0, v1

    const/16 v1, 0xe5

    aput-byte v4, v0, v1

    const/16 v1, 0xe6

    aput-byte v4, v0, v1

    const/16 v1, 0xe7

    aput-byte v4, v0, v1

    const/16 v1, 0xe8

    .line 459
    aput-byte v4, v0, v1

    const/16 v1, 0xe9

    aput-byte v4, v0, v1

    const/16 v1, 0xea

    aput-byte v4, v0, v1

    const/16 v1, 0xeb

    aput-byte v4, v0, v1

    const/16 v1, 0xec

    aput-byte v4, v0, v1

    const/16 v1, 0xed

    aput-byte v4, v0, v1

    const/16 v1, 0xee

    aput-byte v4, v0, v1

    const/16 v1, 0xef

    aput-byte v4, v0, v1

    const/16 v1, 0xf0

    aput-byte v4, v0, v1

    const/16 v1, 0xf1

    aput-byte v4, v0, v1

    const/16 v1, 0xf2

    aput-byte v4, v0, v1

    const/16 v1, 0xf3

    aput-byte v4, v0, v1

    const/16 v1, 0xf4

    aput-byte v4, v0, v1

    const/16 v1, 0xf5

    .line 461
    aput-byte v4, v0, v1

    const/16 v1, 0xf6

    aput-byte v4, v0, v1

    const/16 v1, 0xf7

    aput-byte v4, v0, v1

    const/16 v1, 0xf8

    aput-byte v4, v0, v1

    const/16 v1, 0xf9

    aput-byte v4, v0, v1

    const/16 v1, 0xfa

    aput-byte v4, v0, v1

    const/16 v1, 0xfb

    aput-byte v4, v0, v1

    const/16 v1, 0xfc

    aput-byte v4, v0, v1

    const/16 v1, 0xfd

    aput-byte v4, v0, v1

    const/16 v1, 0xfe

    aput-byte v4, v0, v1

    const/16 v1, 0xff

    aput-byte v4, v0, v1

    const/16 v1, 0x100

    aput-byte v4, v0, v1

    .line 412
    sput-object v0, Lcom/mdotm/android/utils/MdotMBase64;->_ORDERED_DECODABET:[B

    .line 462
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 240
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 316
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 394
    :array_2
    .array-data 1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    return-void
.end method

.method static synthetic access$0(I)[B
    .locals 1

    .prologue
    .line 488
    invoke-static {p0}, Lcom/mdotm/android/utils/MdotMBase64;->getDecodabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1([BII[BII)[B
    .locals 1

    .prologue
    .line 557
    invoke-static/range {p0 .. p5}, Lcom/mdotm/android/utils/MdotMBase64;->encode3to4([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2([BI[BII)I
    .locals 1

    .prologue
    .line 1155
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mdotm/android/utils/MdotMBase64;->decode4to3([BI[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$3([B[BII)[B
    .locals 1

    .prologue
    .line 521
    invoke-static {p0, p1, p2, p3}, Lcom/mdotm/android/utils/MdotMBase64;->encode3to4([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1362
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMBase64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1383
    if-nez p0, :cond_0

    .line 1384
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Input string was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1389
    :cond_0
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1397
    :goto_0
    array-length v1, v0

    invoke-static {v0, v4, v1, p1}, Lcom/mdotm/android/utils/MdotMBase64;->decode([BIII)[B

    move-result-object v0

    .line 1401
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    move v1, v2

    .line 1402
    :goto_1
    if-eqz v0, :cond_1

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_1

    if-nez v1, :cond_1

    .line 1404
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v4, 0xff00

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    .line 1405
    const v2, 0x8b1f

    if-ne v2, v1, :cond_1

    .line 1409
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 1413
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1414
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1415
    :try_start_3
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1417
    :goto_2
    :try_start_4
    invoke-virtual {v4, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-gez v3, :cond_3

    .line 1422
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v0

    .line 1431
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 1435
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 1439
    :goto_4
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 1447
    :cond_1
    :goto_5
    return-object v0

    .line 1391
    :catch_0
    move-exception v0

    .line 1392
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v4

    .line 1401
    goto :goto_1

    .line 1418
    :cond_3
    const/4 v6, 0x0

    :try_start_8
    invoke-virtual {v2, v1, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    .line 1425
    :catch_1
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    .line 1426
    :goto_6
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1431
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 1435
    :goto_7
    :try_start_b
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 1439
    :goto_8
    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_5

    .line 1440
    :catch_2
    move-exception v1

    goto :goto_5

    .line 1429
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v5, v3

    .line 1431
    :goto_9
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 1435
    :goto_a
    :try_start_e
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 1439
    :goto_b
    :try_start_f
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 1442
    :goto_c
    throw v0

    .line 1432
    :catch_3
    move-exception v1

    goto :goto_7

    .line 1436
    :catch_4
    move-exception v1

    goto :goto_8

    .line 1432
    :catch_5
    move-exception v1

    goto :goto_a

    .line 1436
    :catch_6
    move-exception v1

    goto :goto_b

    .line 1440
    :catch_7
    move-exception v1

    goto :goto_c

    .line 1432
    :catch_8
    move-exception v1

    goto :goto_3

    .line 1436
    :catch_9
    move-exception v1

    goto :goto_4

    .line 1440
    :catch_a
    move-exception v1

    goto :goto_5

    .line 1429
    :catchall_1
    move-exception v0

    move-object v5, v3

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v5, v4

    goto :goto_9

    .line 1425
    :catch_b
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_6

    :catch_c
    move-exception v1

    move-object v4, v3

    goto :goto_6

    :catch_d
    move-exception v1

    move-object v4, v5

    goto :goto_6
.end method

.method public static decode([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1246
    .line 1248
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lcom/mdotm/android/utils/MdotMBase64;->decode([BIII)[B

    move-result-object v0

    .line 1254
    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1282
    if-nez p0, :cond_0

    .line 1283
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot decode null source array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1285
    :cond_0
    if-ltz p1, :cond_1

    add-int v0, p1, p2

    array-length v2, p0

    if-le v0, v2, :cond_2

    .line 1286
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1289
    const-string v2, "Source array with length %d cannot have offset of %d and process %d bytes."

    new-array v3, v11, [Ljava/lang/Object;

    .line 1290
    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v10

    .line 1288
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1286
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_2
    if-nez p2, :cond_3

    .line 1294
    new-array v0, v1, [B

    .line 1347
    :goto_0
    return-object v0

    .line 1295
    :cond_3
    if-ge p2, v3, :cond_4

    .line 1296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1297
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Base64-encoded string must have at least four characters, but length specified was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1296
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_4
    invoke-static {p3}, Lcom/mdotm/android/utils/MdotMBase64;->getDecodabet(I)[B

    move-result-object v5

    .line 1303
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 1304
    new-array v6, v0, [B

    .line 1307
    new-array v7, v3, [B

    move v4, p1

    move v2, v1

    move v3, v1

    .line 1313
    :goto_1
    add-int v0, p1, p2

    if-lt v4, v0, :cond_6

    move v0, v3

    .line 1345
    :cond_5
    new-array v2, v0, [B

    .line 1346
    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 1347
    goto :goto_0

    .line 1315
    :cond_6
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v5, v0

    .line 1320
    const/4 v8, -0x5

    if-lt v0, v8, :cond_7

    .line 1321
    const/4 v8, -0x1

    if-lt v0, v8, :cond_9

    .line 1322
    add-int/lit8 v0, v2, 0x1

    aget-byte v8, p0, v4

    aput-byte v8, v7, v2

    .line 1323
    if-le v0, v11, :cond_8

    .line 1325
    invoke-static {v7, v1, v6, v3, p3}, Lcom/mdotm/android/utils/MdotMBase64;->decode4to3([BI[BII)I

    move-result v0

    add-int/2addr v0, v3

    .line 1329
    aget-byte v2, p0, v4

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_5

    move v2, v0

    move v0, v1

    .line 1313
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 1337
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 1340
    const-string v2, "Bad Base64 input character decimal %d in array position %d"

    new-array v3, v10, [Ljava/lang/Object;

    .line 1341
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    .line 1339
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1337
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v2, v3

    goto :goto_2

    :cond_9
    move v0, v2

    move v2, v3

    goto :goto_2
.end method

.method private static decode4to3([BI[BII)I
    .locals 6

    .prologue
    const/16 v4, 0x3d

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1159
    if-nez p0, :cond_0

    .line 1160
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source array was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1162
    :cond_0
    if-nez p2, :cond_1

    .line 1163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination array was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1165
    :cond_1
    if-ltz p1, :cond_2

    add-int/lit8 v2, p1, 0x3

    array-length v3, p0

    if-lt v2, v3, :cond_3

    .line 1166
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1169
    const-string v3, "Source array with length %d cannot have offset of %d and still process four bytes."

    new-array v1, v1, [Ljava/lang/Object;

    .line 1170
    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 1168
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1166
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1172
    :cond_3
    if-ltz p3, :cond_4

    add-int/lit8 v2, p3, 0x2

    array-length v3, p2

    if-lt v2, v3, :cond_5

    .line 1173
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1176
    const-string v3, "Destination array with length %d cannot have offset of %d and still store three bytes."

    new-array v1, v1, [Ljava/lang/Object;

    .line 1177
    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 1175
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1180
    :cond_5
    invoke-static {p4}, Lcom/mdotm/android/utils/MdotMBase64;->getDecodabet(I)[B

    move-result-object v2

    .line 1183
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_6

    .line 1188
    aget-byte v1, p0, p1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    .line 1189
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    .line 1188
    or-int/2addr v1, v2

    .line 1191
    ushr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 1228
    :goto_0
    return v0

    .line 1196
    :cond_6
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_7

    .line 1202
    aget-byte v0, p0, p1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x12

    .line 1203
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    .line 1202
    or-int/2addr v0, v3

    .line 1204
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    .line 1202
    or-int/2addr v0, v2

    .line 1206
    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 1207
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    move v0, v1

    .line 1208
    goto :goto_0

    .line 1219
    :cond_7
    aget-byte v0, p0, p1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x12

    .line 1220
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xc

    .line 1219
    or-int/2addr v0, v1

    .line 1221
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x6

    .line 1219
    or-int/2addr v0, v1

    .line 1222
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    .line 1219
    or-int/2addr v0, v1

    .line 1224
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 1225
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 1226
    add-int/lit8 v1, p3, 0x2

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 1228
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1805
    invoke-static {p0}, Lcom/mdotm/android/utils/MdotMBase64;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1806
    const/4 v2, 0x0

    .line 1808
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 1809
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1808
    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1810
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1817
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1821
    :goto_0
    return-void

    .line 1812
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1813
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1815
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 1817
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1820
    :goto_3
    throw v0

    .line 1818
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_0

    .line 1815
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1812
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1657
    .line 1658
    const/4 v1, 0x0

    .line 1661
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 1668
    new-instance v0, Ljava/io/IOException;

    .line 1669
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "File is too big for this convenience method ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1670
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1669
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1668
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1688
    :catch_0
    move-exception v0

    .line 1689
    :goto_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1691
    :catchall_0
    move-exception v0

    .line 1693
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1696
    :goto_2
    throw v0

    .line 1672
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    new-array v4, v2, [B

    .line 1675
    new-instance v2, Lcom/mdotm/android/utils/MdotMBase64$InputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    .line 1676
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x0

    .line 1675
    invoke-direct {v2, v5, v3}, Lcom/mdotm/android/utils/MdotMBase64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1679
    :goto_3
    const/16 v1, 0x1000

    :try_start_4
    invoke-virtual {v2, v4, v0, v1}, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_1

    .line 1684
    new-array v1, v0, [B

    .line 1685
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v3, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1693
    :try_start_5
    invoke-virtual {v2}, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1698
    :goto_4
    return-object v1

    .line 1680
    :cond_1
    add-int/2addr v0, v1

    goto :goto_3

    .line 1694
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    .line 1691
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 1688
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1619
    const/4 v2, 0x0

    .line 1621
    :try_start_0
    new-instance v1, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;

    .line 1622
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1621
    invoke-direct {v1, v0, v3}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1623
    :try_start_1
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1630
    :try_start_2
    invoke-virtual {v1}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1635
    :goto_0
    return-void

    .line 1625
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1626
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1628
    :catchall_0
    move-exception v0

    .line 1630
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1633
    :goto_3
    throw v0

    .line 1631
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_0

    .line 1628
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 1625
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1468
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/mdotm/android/utils/MdotMBase64;->decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1497
    invoke-static {p0, p1}, Lcom/mdotm/android/utils/MdotMBase64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1504
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1507
    if-nez p2, :cond_0

    .line 1508
    :try_start_1
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    .line 1531
    :goto_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1541
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1545
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1550
    :goto_2
    return-object v0

    .line 1514
    :cond_0
    :try_start_4
    new-instance v0, Lcom/mdotm/android/utils/MdotMBase64$1;

    invoke-direct {v0, v2, p2}, Lcom/mdotm/android/utils/MdotMBase64$1;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 1533
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1534
    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1539
    :catchall_0
    move-exception v0

    .line 1541
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1545
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1548
    :goto_6
    throw v0

    .line 1536
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 1537
    :goto_7
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1542
    :catch_2
    move-exception v2

    goto :goto_5

    .line 1546
    :catch_3
    move-exception v1

    goto :goto_6

    .line 1542
    :catch_4
    move-exception v2

    goto :goto_1

    .line 1546
    :catch_5
    move-exception v1

    goto :goto_2

    .line 1539
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 1536
    :catch_6
    move-exception v0

    goto :goto_7

    .line 1533
    :catch_7
    move-exception v0

    goto :goto_3
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 619
    new-array v0, v4, [B

    .line 620
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 622
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 628
    return-void

    .line 623
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 624
    invoke-virtual {p0, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 625
    invoke-static {v1, v0, v2, v3}, Lcom/mdotm/android/utils/MdotMBase64;->encode3to4([B[BII)[B

    .line 626
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 644
    new-array v2, v5, [B

    .line 645
    new-array v3, v6, [B

    .line 647
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 655
    return-void

    .line 648
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 649
    invoke-virtual {p0, v2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 650
    invoke-static {v3, v2, v0, v1}, Lcom/mdotm/android/utils/MdotMBase64;->encode3to4([B[BII)[B

    move v0, v1

    .line 651
    :goto_0
    if-ge v0, v6, :cond_0

    .line 652
    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static encode3to4([BII[BII)[B
    .locals 5

    .prologue
    const/16 v4, 0x3d

    const/4 v0, 0x0

    .line 560
    invoke-static {p5}, Lcom/mdotm/android/utils/MdotMBase64;->getAlphabet(I)[B

    move-result-object v3

    .line 574
    if-lez p2, :cond_1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    move v2, v1

    .line 575
    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    .line 574
    :goto_1
    or-int/2addr v1, v2

    .line 576
    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    .line 574
    :cond_0
    or-int/2addr v0, v1

    .line 578
    packed-switch p2, :pswitch_data_0

    .line 601
    :goto_2
    return-object p3

    :cond_1
    move v2, v0

    .line 574
    goto :goto_0

    :cond_2
    move v1, v0

    .line 575
    goto :goto_1

    .line 580
    :pswitch_0
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    .line 581
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    .line 582
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    .line 583
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    goto :goto_2

    .line 587
    :pswitch_1
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    .line 588
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    .line 589
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    .line 590
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_2

    .line 594
    :pswitch_2
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    .line 595
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    .line 596
    add-int/lit8 v0, p4, 0x2

    aput-byte v4, p3, v0

    .line 597
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_2

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 523
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mdotm/android/utils/MdotMBase64;->encode3to4([BII[BII)[B

    .line 524
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 796
    const/4 v0, 0x0

    .line 798
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/mdotm/android/utils/MdotMBase64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 802
    :cond_0
    sget-boolean v1, Lcom/mdotm/android/utils/MdotMBase64;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 799
    :catch_0
    move-exception v1

    .line 800
    sget-boolean v2, Lcom/mdotm/android/utils/MdotMBase64;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 803
    :cond_1
    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/mdotm/android/utils/MdotMBase64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 877
    const/4 v0, 0x0

    .line 879
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/mdotm/android/utils/MdotMBase64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 883
    :cond_0
    sget-boolean v1, Lcom/mdotm/android/utils/MdotMBase64;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 880
    :catch_0
    move-exception v1

    .line 881
    sget-boolean v2, Lcom/mdotm/android/utils/MdotMBase64;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 884
    :cond_1
    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 933
    invoke-static {p0, p1, p2, p3}, Lcom/mdotm/android/utils/MdotMBase64;->encodeBytesToBytes([BIII)[B

    move-result-object v1

    .line 937
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    :goto_0
    return-object v0

    .line 939
    :catch_0
    move-exception v0

    .line 940
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static encodeBytesToBytes([B)[B
    .locals 4

    .prologue
    .line 959
    const/4 v0, 0x0

    .line 961
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p0

    .line 962
    const/4 v3, 0x0

    .line 961
    invoke-static {p0, v1, v2, v3}, Lcom/mdotm/android/utils/MdotMBase64;->encodeBytesToBytes([BIII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 967
    :cond_0
    return-object v0

    .line 963
    :catch_0
    move-exception v1

    .line 964
    sget-boolean v2, Lcom/mdotm/android/utils/MdotMBase64;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOExceptions only come from GZipping, which is turned off: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static encodeBytesToBytes([BIII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 998
    if-nez p0, :cond_0

    .line 999
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot serialize a null array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_0
    if-gez p1, :cond_1

    .line 1003
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot have negative offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1003
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_1
    if-gez p2, :cond_2

    .line 1008
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot have length offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :cond_2
    add-int v1, p1, p2

    array-length v4, p0

    if-le v1, v4, :cond_3

    .line 1013
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1016
    const-string v3, "Cannot have offset of %d and length of %d with array of length %d"

    new-array v2, v2, [Ljava/lang/Object;

    .line 1017
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x2

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1015
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1021
    :cond_3
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_5

    .line 1028
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1029
    :try_start_1
    new-instance v1, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;

    or-int/lit8 v0, p3, 0x1

    invoke-direct {v1, v4, v0}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1030
    :try_start_2
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1032
    :try_start_3
    invoke-virtual {v2, p0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 1033
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1042
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1046
    :goto_0
    :try_start_5
    invoke-virtual {v1}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1050
    :goto_1
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1055
    :goto_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1111
    :cond_4
    :goto_3
    return-object v3

    .line 1035
    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 1038
    :goto_4
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1040
    :catchall_0
    move-exception v0

    move-object v4, v2

    .line 1042
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 1046
    :goto_6
    :try_start_9
    invoke-virtual {v1}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 1050
    :goto_7
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 1053
    :goto_8
    throw v0

    .line 1060
    :cond_5
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_8

    move v6, v0

    .line 1069
    :goto_9
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, v0, 0x4

    rem-int/lit8 v0, p2, 0x3

    if-lez v0, :cond_9

    const/4 v0, 0x4

    :goto_a
    add-int/2addr v0, v1

    .line 1072
    if-eqz v6, :cond_6

    .line 1073
    div-int/lit8 v1, v0, 0x4c

    add-int/2addr v0, v1

    .line 1076
    :cond_6
    new-array v3, v0, [B

    .line 1080
    add-int/lit8 v10, p2, -0x2

    move v8, v7

    move v4, v7

    move v9, v7

    .line 1082
    :goto_b
    if-lt v9, v10, :cond_a

    .line 1093
    if-ge v9, p2, :cond_7

    .line 1094
    add-int v1, v9, p1

    sub-int v2, p2, v9

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mdotm/android/utils/MdotMBase64;->encode3to4([BII[BII)[B

    .line 1095
    add-int/lit8 v4, v4, 0x4

    .line 1099
    :cond_7
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    if-gt v4, v0, :cond_4

    .line 1104
    new-array v0, v4, [B

    .line 1105
    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    .line 1108
    goto :goto_3

    :cond_8
    move v6, v7

    .line 1060
    goto :goto_9

    :cond_9
    move v0, v7

    .line 1069
    goto :goto_a

    .line 1083
    :cond_a
    add-int v1, v9, p1

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mdotm/android/utils/MdotMBase64;->encode3to4([BII[BII)[B

    .line 1085
    add-int/lit8 v0, v8, 0x4

    .line 1086
    if-eqz v6, :cond_b

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_b

    .line 1087
    add-int/lit8 v0, v4, 0x4

    const/16 v1, 0xa

    aput-byte v1, v3, v0

    .line 1088
    add-int/lit8 v4, v4, 0x1

    move v0, v7

    .line 1082
    :cond_b
    add-int/lit8 v1, v9, 0x3

    add-int/lit8 v4, v4, 0x4

    move v8, v0

    move v9, v1

    goto :goto_b

    .line 1043
    :catch_1
    move-exception v2

    goto :goto_6

    .line 1047
    :catch_2
    move-exception v1

    goto :goto_7

    .line 1051
    :catch_3
    move-exception v1

    goto :goto_8

    .line 1043
    :catch_4
    move-exception v0

    goto :goto_0

    .line 1047
    :catch_5
    move-exception v0

    goto :goto_1

    .line 1051
    :catch_6
    move-exception v0

    goto :goto_2

    .line 1040
    :catchall_1
    move-exception v0

    move-object v1, v3

    move-object v4, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 1035
    :catch_7
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    goto/16 :goto_4

    :catch_8
    move-exception v0

    move-object v2, v4

    goto/16 :goto_4

    :catch_9
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_4
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1773
    invoke-static {p0}, Lcom/mdotm/android/utils/MdotMBase64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1774
    const/4 v2, 0x0

    .line 1776
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 1777
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1776
    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1778
    :try_start_1
    const-string v2, "US-ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1785
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1789
    :goto_0
    return-void

    .line 1780
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1781
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1783
    :catchall_0
    move-exception v0

    .line 1785
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1788
    :goto_3
    throw v0

    .line 1786
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_0

    .line 1783
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 1780
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1721
    .line 1722
    const/4 v2, 0x0

    .line 1725
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1726
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 1727
    const/16 v4, 0x28

    .line 1726
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v4, v1, [B

    .line 1733
    new-instance v1, Lcom/mdotm/android/utils/MdotMBase64$InputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    .line 1734
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x1

    .line 1733
    invoke-direct {v1, v5, v3}, Lcom/mdotm/android/utils/MdotMBase64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1737
    :goto_0
    const/16 v2, 0x1000

    :try_start_1
    invoke-virtual {v1, v4, v0, v2}, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    .line 1742
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 1743
    const-string v5, "US-ASCII"

    .line 1742
    invoke-direct {v2, v4, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1751
    :try_start_2
    invoke-virtual {v1}, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1756
    :goto_1
    return-object v2

    .line 1738
    :cond_0
    add-int/2addr v0, v2

    goto :goto_0

    .line 1746
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1747
    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1749
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 1751
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1754
    :goto_4
    throw v0

    .line 1752
    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_1

    .line 1749
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1746
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMBase64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 723
    if-nez p0, :cond_0

    .line 724
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot serialize a null object."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 736
    :try_start_1
    new-instance v3, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;

    or-int/lit8 v0, p1, 0x1

    invoke-direct {v3, v4, v0}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 737
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 739
    :try_start_2
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 740
    :try_start_3
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    .line 745
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 754
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 758
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 762
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 766
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 773
    :goto_4
    :try_start_8
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_1

    .line 777
    :goto_5
    return-object v0

    .line 743
    :cond_1
    :try_start_9
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 750
    :goto_6
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 752
    :catchall_0
    move-exception v0

    .line 754
    :goto_7
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 758
    :goto_8
    :try_start_c
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 762
    :goto_9
    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 766
    :goto_a
    :try_start_e
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 769
    :goto_b
    throw v0

    .line 775
    :catch_1
    move-exception v0

    .line 777
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_5

    .line 755
    :catch_2
    move-exception v1

    goto :goto_8

    .line 759
    :catch_3
    move-exception v1

    goto :goto_9

    .line 763
    :catch_4
    move-exception v1

    goto :goto_a

    .line 767
    :catch_5
    move-exception v1

    goto :goto_b

    .line 755
    :catch_6
    move-exception v0

    goto :goto_1

    .line 759
    :catch_7
    move-exception v0

    goto :goto_2

    .line 763
    :catch_8
    move-exception v0

    goto :goto_3

    .line 767
    :catch_9
    move-exception v0

    goto :goto_4

    .line 752
    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_7

    .line 747
    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_6

    :catch_b
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_6
.end method

.method public static encodeToFile([BLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1576
    if-nez p0, :cond_0

    .line 1577
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data to encode was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1580
    :cond_0
    const/4 v2, 0x0

    .line 1582
    :try_start_0
    new-instance v1, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;

    .line 1583
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1582
    invoke-direct {v1, v0, v3}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1584
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1591
    :try_start_2
    invoke-virtual {v1}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1596
    :goto_0
    return-void

    .line 1586
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1587
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1589
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 1591
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Lcom/mdotm/android/utils/MdotMBase64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1594
    :goto_3
    throw v0

    .line 1592
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_0

    .line 1589
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1586
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private static final getAlphabet(I)[B
    .locals 2

    .prologue
    .line 473
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 474
    sget-object v0, Lcom/mdotm/android/utils/MdotMBase64;->_URL_SAFE_ALPHABET:[B

    .line 478
    :goto_0
    return-object v0

    .line 475
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 476
    sget-object v0, Lcom/mdotm/android/utils/MdotMBase64;->_ORDERED_ALPHABET:[B

    goto :goto_0

    .line 478
    :cond_1
    sget-object v0, Lcom/mdotm/android/utils/MdotMBase64;->_STANDARD_ALPHABET:[B

    goto :goto_0
.end method

.method private static final getDecodabet(I)[B
    .locals 2

    .prologue
    .line 489
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 490
    sget-object v0, Lcom/mdotm/android/utils/MdotMBase64;->_URL_SAFE_DECODABET:[B

    .line 494
    :goto_0
    return-object v0

    .line 491
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 492
    sget-object v0, Lcom/mdotm/android/utils/MdotMBase64;->_ORDERED_DECODABET:[B

    goto :goto_0

    .line 494
    :cond_1
    sget-object v0, Lcom/mdotm/android/utils/MdotMBase64;->_STANDARD_DECODABET:[B

    goto :goto_0
.end method
