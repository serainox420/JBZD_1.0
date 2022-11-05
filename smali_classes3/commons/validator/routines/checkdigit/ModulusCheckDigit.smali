.class public abstract Lcommons/validator/routines/checkdigit/ModulusCheckDigit;
.super Ljava/lang/Object;
.source "ModulusCheckDigit.java"

# interfaces
.implements Lcommons/validator/routines/checkdigit/a;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;->a:I

    .line 51
    return-void
.end method

.method public static sumDigits(I)I
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_0
    if-lez p0, :cond_0

    .line 196
    rem-int/lit8 v1, p0, 0xa

    add-int/2addr v0, v1

    .line 197
    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    .line 199
    :cond_0
    return v0
.end method


# virtual methods
.method protected a(CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcommons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {p1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0

    return v0

    .line 161
    :cond_0
    new-instance v0, Lcommons/validator/routines/checkdigit/CheckDigitException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Character["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcommons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract a(III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcommons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation
.end method

.method protected a(Ljava/lang/String;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcommons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 108
    move v0, v1

    move v2, v1

    .line 109
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz p2, :cond_0

    move v3, v1

    :goto_1
    add-int/2addr v3, v4

    .line 111
    add-int/lit8 v4, v0, 0x1

    .line 112
    sub-int/2addr v3, v0

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5, v4, v3}, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;->a(CII)I

    move-result v5

    .line 114
    invoke-virtual {p0, v5, v4, v3}, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;->a(III)I

    move-result v3

    add-int/2addr v2, v3

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 116
    :cond_1
    if-nez v2, :cond_2

    .line 117
    new-instance v0, Lcommons/validator/routines/checkdigit/CheckDigitException;

    const-string v1, "Invalid code, sum is zero"

    invoke-direct {v0, v1}, Lcommons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    iget v0, p0, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;->a:I

    rem-int v0, v2, v0

    return v0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcommons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    .prologue
    .line 179
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    new-instance v0, Lcommons/validator/routines/checkdigit/CheckDigitException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Check Digit Value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcommons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public calculate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcommons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    new-instance v0, Lcommons/validator/routines/checkdigit/CheckDigitException;

    const-string v1, "Code is missing"

    invoke-direct {v0, v1}, Lcommons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;->a(Ljava/lang/String;Z)I

    move-result v0

    .line 94
    iget v1, p0, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;->a:I

    sub-int v0, v1, v0

    iget v1, p0, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;->a:I

    rem-int/2addr v0, v1

    .line 95
    invoke-virtual {p0, v0}, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModulus()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;->a:I

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcommons/validator/routines/checkdigit/ModulusCheckDigit;->a(Ljava/lang/String;Z)I
    :try_end_0
    .catch Lcommons/validator/routines/checkdigit/CheckDigitException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 75
    if-nez v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method
