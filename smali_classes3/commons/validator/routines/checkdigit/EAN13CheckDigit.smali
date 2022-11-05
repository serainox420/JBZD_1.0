.class public final Lcommons/validator/routines/checkdigit/EAN13CheckDigit;
.super Lcommons/validator/routines/checkdigit/ModulusCheckDigit;
.source "EAN13CheckDigit.java"


# static fields
.field public static final EAN13_CHECK_DIGIT:Lcommons/validator/routines/checkdigit/a;

.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcommons/validator/routines/checkdigit/EAN13CheckDigit;

    invoke-direct {v0}, Lcommons/validator/routines/checkdigit/EAN13CheckDigit;-><init>()V

    sput-object v0, Lcommons/validator/routines/checkdigit/EAN13CheckDigit;->EAN13_CHECK_DIGIT:Lcommons/validator/routines/checkdigit/a;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcommons/validator/routines/checkdigit/EAN13CheckDigit;->a:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;-><init>(I)V

    .line 58
    return-void
.end method


# virtual methods
.method protected a(III)I
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcommons/validator/routines/checkdigit/EAN13CheckDigit;->a:[I

    rem-int/lit8 v1, p3, 0x2

    aget v0, v0, v1

    .line 75
    mul-int/2addr v0, p1

    return v0
.end method
