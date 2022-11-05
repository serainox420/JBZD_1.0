.class public final Lcommons/validator/routines/checkdigit/LuhnCheckDigit;
.super Lcommons/validator/routines/checkdigit/ModulusCheckDigit;
.source "LuhnCheckDigit.java"


# static fields
.field public static final LUHN_CHECK_DIGIT:Lcommons/validator/routines/checkdigit/a;

.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcommons/validator/routines/checkdigit/LuhnCheckDigit;

    invoke-direct {v0}, Lcommons/validator/routines/checkdigit/LuhnCheckDigit;-><init>()V

    sput-object v0, Lcommons/validator/routines/checkdigit/LuhnCheckDigit;->LUHN_CHECK_DIGIT:Lcommons/validator/routines/checkdigit/a;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcommons/validator/routines/checkdigit/LuhnCheckDigit;->a:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;-><init>(I)V

    .line 55
    return-void
.end method


# virtual methods
.method protected a(III)I
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcommons/validator/routines/checkdigit/LuhnCheckDigit;->a:[I

    rem-int/lit8 v1, p3, 0x2

    aget v0, v0, v1

    .line 72
    mul-int/2addr v0, p1

    .line 73
    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x9

    :cond_0
    return v0
.end method
