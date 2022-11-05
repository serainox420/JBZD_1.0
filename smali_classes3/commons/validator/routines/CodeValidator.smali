.class public final Lcommons/validator/routines/CodeValidator;
.super Ljava/lang/Object;
.source "CodeValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lcommons/validator/routines/RegexValidator;

.field private final b:I

.field private final c:I

.field private final d:Lcommons/validator/routines/checkdigit/a;


# direct methods
.method public constructor <init>(Lcommons/validator/routines/RegexValidator;IILcommons/validator/routines/checkdigit/a;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcommons/validator/routines/CodeValidator;->a:Lcommons/validator/routines/RegexValidator;

    .line 141
    iput p2, p0, Lcommons/validator/routines/CodeValidator;->b:I

    .line 142
    iput p3, p0, Lcommons/validator/routines/CodeValidator;->c:I

    .line 143
    iput-object p4, p0, Lcommons/validator/routines/CodeValidator;->d:Lcommons/validator/routines/checkdigit/a;

    .line 144
    return-void
.end method

.method public constructor <init>(Lcommons/validator/routines/RegexValidator;ILcommons/validator/routines/checkdigit/a;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p2, p3}, Lcommons/validator/routines/CodeValidator;-><init>(Lcommons/validator/routines/RegexValidator;IILcommons/validator/routines/checkdigit/a;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcommons/validator/routines/RegexValidator;Lcommons/validator/routines/checkdigit/a;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 113
    invoke-direct {p0, p1, v0, v0, p2}, Lcommons/validator/routines/CodeValidator;-><init>(Lcommons/validator/routines/RegexValidator;IILcommons/validator/routines/checkdigit/a;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcommons/validator/routines/checkdigit/a;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    new-instance v0, Lcommons/validator/routines/RegexValidator;

    invoke-direct {v0, p1}, Lcommons/validator/routines/RegexValidator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcommons/validator/routines/CodeValidator;->a:Lcommons/validator/routines/RegexValidator;

    .line 100
    :goto_0
    iput p2, p0, Lcommons/validator/routines/CodeValidator;->b:I

    .line 101
    iput p3, p0, Lcommons/validator/routines/CodeValidator;->c:I

    .line 102
    iput-object p4, p0, Lcommons/validator/routines/CodeValidator;->d:Lcommons/validator/routines/checkdigit/a;

    .line 103
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcommons/validator/routines/CodeValidator;->a:Lcommons/validator/routines/RegexValidator;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILcommons/validator/routines/checkdigit/a;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p2, p3}, Lcommons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;IILcommons/validator/routines/checkdigit/a;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcommons/validator/routines/checkdigit/a;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 68
    invoke-direct {p0, p1, v0, v0, p2}, Lcommons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;IILcommons/validator/routines/checkdigit/a;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getCheckDigit()Lcommons/validator/routines/checkdigit/a;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcommons/validator/routines/CodeValidator;->d:Lcommons/validator/routines/checkdigit/a;

    return-object v0
.end method

.method public getMaxLength()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcommons/validator/routines/CodeValidator;->c:I

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcommons/validator/routines/CodeValidator;->b:I

    return v0
.end method

.method public getRegexValidator()Lcommons/validator/routines/RegexValidator;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcommons/validator/routines/CodeValidator;->a:Lcommons/validator/routines/RegexValidator;

    return-object v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcommons/validator/routines/CodeValidator;->validate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 218
    if-nez p1, :cond_1

    move-object v0, v1

    .line 246
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 224
    goto :goto_0

    .line 228
    :cond_2
    iget-object v2, p0, Lcommons/validator/routines/CodeValidator;->a:Lcommons/validator/routines/RegexValidator;

    if-eqz v2, :cond_3

    .line 229
    iget-object v2, p0, Lcommons/validator/routines/CodeValidator;->a:Lcommons/validator/routines/RegexValidator;

    invoke-virtual {v2, v0}, Lcommons/validator/routines/RegexValidator;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-nez v0, :cond_3

    move-object v0, v1

    .line 231
    goto :goto_0

    .line 236
    :cond_3
    iget v2, p0, Lcommons/validator/routines/CodeValidator;->b:I

    if-ltz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcommons/validator/routines/CodeValidator;->b:I

    if-lt v2, v3, :cond_5

    :cond_4
    iget v2, p0, Lcommons/validator/routines/CodeValidator;->c:I

    if-ltz v2, :cond_6

    .line 237
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcommons/validator/routines/CodeValidator;->c:I

    if-le v2, v3, :cond_6

    :cond_5
    move-object v0, v1

    .line 238
    goto :goto_0

    .line 242
    :cond_6
    iget-object v2, p0, Lcommons/validator/routines/CodeValidator;->d:Lcommons/validator/routines/checkdigit/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcommons/validator/routines/CodeValidator;->d:Lcommons/validator/routines/checkdigit/a;

    invoke-interface {v2, v0}, Lcommons/validator/routines/checkdigit/a;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 243
    goto :goto_0
.end method
