.class public Lcommons/validator/routines/ISBNValidator;
.super Ljava/lang/Object;
.source "ISBNValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Lcommons/validator/routines/ISBNValidator;

.field private static final b:Lcommons/validator/routines/ISBNValidator;


# instance fields
.field private final c:Lcommons/validator/routines/CodeValidator;

.field private final d:Lcommons/validator/routines/CodeValidator;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcommons/validator/routines/ISBNValidator;

    invoke-direct {v0}, Lcommons/validator/routines/ISBNValidator;-><init>()V

    sput-object v0, Lcommons/validator/routines/ISBNValidator;->a:Lcommons/validator/routines/ISBNValidator;

    .line 85
    new-instance v0, Lcommons/validator/routines/ISBNValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcommons/validator/routines/ISBNValidator;-><init>(Z)V

    sput-object v0, Lcommons/validator/routines/ISBNValidator;->b:Lcommons/validator/routines/ISBNValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcommons/validator/routines/ISBNValidator;-><init>(Z)V

    .line 125
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcommons/validator/routines/CodeValidator;

    const-string v1, "^(?:(\\d{9}[0-9X])|(?:(\\d{1,5})(?:\\-|\\s)(\\d{1,7})(?:\\-|\\s)(\\d{1,6})(?:\\-|\\s)([0-9X])))$"

    const/16 v2, 0xa

    sget-object v3, Lcommons/validator/routines/checkdigit/ISBN10CheckDigit;->ISBN10_CHECK_DIGIT:Lcommons/validator/routines/checkdigit/a;

    invoke-direct {v0, v1, v2, v3}, Lcommons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;ILcommons/validator/routines/checkdigit/a;)V

    iput-object v0, p0, Lcommons/validator/routines/ISBNValidator;->c:Lcommons/validator/routines/CodeValidator;

    .line 92
    new-instance v0, Lcommons/validator/routines/CodeValidator;

    const-string v1, "^(978|979)(?:(\\d{10})|(?:(?:\\-|\\s)(\\d{1,5})(?:\\-|\\s)(\\d{1,7})(?:\\-|\\s)(\\d{1,6})(?:\\-|\\s)([0-9])))$"

    const/16 v2, 0xd

    sget-object v3, Lcommons/validator/routines/checkdigit/EAN13CheckDigit;->EAN13_CHECK_DIGIT:Lcommons/validator/routines/checkdigit/a;

    invoke-direct {v0, v1, v2, v3}, Lcommons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;ILcommons/validator/routines/checkdigit/a;)V

    iput-object v0, p0, Lcommons/validator/routines/ISBNValidator;->d:Lcommons/validator/routines/CodeValidator;

    .line 136
    iput-boolean p1, p0, Lcommons/validator/routines/ISBNValidator;->e:Z

    .line 137
    return-void
.end method

.method public static getInstance()Lcommons/validator/routines/ISBNValidator;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcommons/validator/routines/ISBNValidator;->a:Lcommons/validator/routines/ISBNValidator;

    return-object v0
.end method

.method public static getInstance(Z)Lcommons/validator/routines/ISBNValidator;
    .locals 1

    .prologue
    .line 116
    if-eqz p0, :cond_0

    sget-object v0, Lcommons/validator/routines/ISBNValidator;->a:Lcommons/validator/routines/ISBNValidator;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcommons/validator/routines/ISBNValidator;->b:Lcommons/validator/routines/ISBNValidator;

    goto :goto_0
.end method


# virtual methods
.method public convertToISBN13(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    .line 241
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "978"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    :try_start_0
    iget-object v2, p0, Lcommons/validator/routines/ISBNValidator;->d:Lcommons/validator/routines/CodeValidator;

    invoke-virtual {v2}, Lcommons/validator/routines/CodeValidator;->getCheckDigit()Lcommons/validator/routines/checkdigit/a;

    move-result-object v2

    invoke-interface {v2, v0}, Lcommons/validator/routines/checkdigit/a;->calculate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcommons/validator/routines/checkdigit/CheckDigitException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check digit error for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcommons/validator/routines/checkdigit/CheckDigitException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcommons/validator/routines/ISBNValidator;->isValidISBN13(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcommons/validator/routines/ISBNValidator;->isValidISBN10(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidISBN10(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcommons/validator/routines/ISBNValidator;->c:Lcommons/validator/routines/CodeValidator;

    invoke-virtual {v0, p1}, Lcommons/validator/routines/CodeValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidISBN13(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcommons/validator/routines/ISBNValidator;->d:Lcommons/validator/routines/CodeValidator;

    invoke-virtual {v0, p1}, Lcommons/validator/routines/CodeValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcommons/validator/routines/ISBNValidator;->validateISBN13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Lcommons/validator/routines/ISBNValidator;->validateISBN10(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcommons/validator/routines/ISBNValidator;->e:Z

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Lcommons/validator/routines/ISBNValidator;->convertToISBN13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    return-object v0
.end method

.method public validateISBN10(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcommons/validator/routines/ISBNValidator;->c:Lcommons/validator/routines/CodeValidator;

    invoke-virtual {v0, p1}, Lcommons/validator/routines/CodeValidator;->validate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public validateISBN13(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcommons/validator/routines/ISBNValidator;->d:Lcommons/validator/routines/CodeValidator;

    invoke-virtual {v0, p1}, Lcommons/validator/routines/CodeValidator;->validate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 222
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
