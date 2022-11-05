.class public final Lcommons/validator/routines/checkdigit/ISBN10CheckDigit;
.super Lcommons/validator/routines/checkdigit/ModulusCheckDigit;
.source "ISBN10CheckDigit.java"


# static fields
.field public static final ISBN10_CHECK_DIGIT:Lcommons/validator/routines/checkdigit/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcommons/validator/routines/checkdigit/ISBN10CheckDigit;

    invoke-direct {v0}, Lcommons/validator/routines/checkdigit/ISBN10CheckDigit;-><init>()V

    sput-object v0, Lcommons/validator/routines/checkdigit/ISBN10CheckDigit;->ISBN10_CHECK_DIGIT:Lcommons/validator/routines/checkdigit/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;-><init>(I)V

    .line 57
    return-void
.end method


# virtual methods
.method protected a(CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcommons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/16 v0, 0x58

    if-ne p1, v0, :cond_0

    .line 90
    const/16 v0, 0xa

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;->a(CII)I

    move-result v0

    goto :goto_0
.end method

.method protected a(III)I
    .locals 1

    .prologue
    .line 72
    mul-int v0, p1, p3

    return v0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcommons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    .prologue
    .line 106
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 107
    const-string v0, "X"

    .line 109
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
