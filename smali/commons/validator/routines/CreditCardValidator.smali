.class public Lcommons/validator/routines/CreditCardValidator;
.super Ljava/lang/Object;
.source "CreditCardValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final AMEX:J = 0x1L

.field public static final AMEX_VALIDATOR:Lcommons/validator/routines/CodeValidator;

.field public static final DINERS:J = 0x10L

.field public static final DINERS_VALIDATOR:Lcommons/validator/routines/CodeValidator;

.field public static final DISCOVER:J = 0x8L

.field public static final DISCOVER_VALIDATOR:Lcommons/validator/routines/CodeValidator;

.field public static final MASTERCARD:J = 0x4L

.field public static final MASTERCARD_VALIDATOR:Lcommons/validator/routines/CodeValidator;

.field public static final NONE:J = 0x0L

.field public static final VISA:J = 0x2L

.field public static final VISA_VALIDATOR:Lcommons/validator/routines/CodeValidator;

.field private static final b:Lcommons/validator/routines/checkdigit/a;

.field private static final c:Lcommons/validator/routines/RegexValidator;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 107
    sget-object v0, Lcommons/validator/routines/checkdigit/LuhnCheckDigit;->LUHN_CHECK_DIGIT:Lcommons/validator/routines/checkdigit/a;

    sput-object v0, Lcommons/validator/routines/CreditCardValidator;->b:Lcommons/validator/routines/checkdigit/a;

    .line 110
    new-instance v0, Lcommons/validator/routines/CodeValidator;

    const-string v1, "^(3[47]\\d{13})$"

    sget-object v2, Lcommons/validator/routines/CreditCardValidator;->b:Lcommons/validator/routines/checkdigit/a;

    invoke-direct {v0, v1, v2}, Lcommons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;Lcommons/validator/routines/checkdigit/a;)V

    sput-object v0, Lcommons/validator/routines/CreditCardValidator;->AMEX_VALIDATOR:Lcommons/validator/routines/CodeValidator;

    .line 113
    new-instance v0, Lcommons/validator/routines/CodeValidator;

    const-string v1, "^(30[0-5]\\d{11}|3095\\d{10}|36\\d{12}|3[8-9]\\d{12})$"

    sget-object v2, Lcommons/validator/routines/CreditCardValidator;->b:Lcommons/validator/routines/checkdigit/a;

    invoke-direct {v0, v1, v2}, Lcommons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;Lcommons/validator/routines/checkdigit/a;)V

    sput-object v0, Lcommons/validator/routines/CreditCardValidator;->DINERS_VALIDATOR:Lcommons/validator/routines/CodeValidator;

    .line 116
    new-instance v0, Lcommons/validator/routines/RegexValidator;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "^(6011\\d{12})$"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "^(64[4-9]\\d{13})$"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "^(65\\d{14})$"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcommons/validator/routines/RegexValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcommons/validator/routines/CreditCardValidator;->c:Lcommons/validator/routines/RegexValidator;

    .line 119
    new-instance v0, Lcommons/validator/routines/CodeValidator;

    sget-object v1, Lcommons/validator/routines/CreditCardValidator;->c:Lcommons/validator/routines/RegexValidator;

    sget-object v2, Lcommons/validator/routines/CreditCardValidator;->b:Lcommons/validator/routines/checkdigit/a;

    invoke-direct {v0, v1, v2}, Lcommons/validator/routines/CodeValidator;-><init>(Lcommons/validator/routines/RegexValidator;Lcommons/validator/routines/checkdigit/a;)V

    sput-object v0, Lcommons/validator/routines/CreditCardValidator;->DISCOVER_VALIDATOR:Lcommons/validator/routines/CodeValidator;

    .line 122
    new-instance v0, Lcommons/validator/routines/CodeValidator;

    const-string v1, "^(5[1-5]\\d{14})$"

    sget-object v2, Lcommons/validator/routines/CreditCardValidator;->b:Lcommons/validator/routines/checkdigit/a;

    invoke-direct {v0, v1, v2}, Lcommons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;Lcommons/validator/routines/checkdigit/a;)V

    sput-object v0, Lcommons/validator/routines/CreditCardValidator;->MASTERCARD_VALIDATOR:Lcommons/validator/routines/CodeValidator;

    .line 125
    new-instance v0, Lcommons/validator/routines/CodeValidator;

    const-string v1, "^(4)(\\d{12}|\\d{15})$"

    sget-object v2, Lcommons/validator/routines/CreditCardValidator;->b:Lcommons/validator/routines/checkdigit/a;

    invoke-direct {v0, v1, v2}, Lcommons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;Lcommons/validator/routines/checkdigit/a;)V

    sput-object v0, Lcommons/validator/routines/CreditCardValidator;->VISA_VALIDATOR:Lcommons/validator/routines/CodeValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 131
    const-wide/16 v0, 0xf

    invoke-direct {p0, v0, v1}, Lcommons/validator/routines/CreditCardValidator;-><init>(J)V

    .line 132
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcommons/validator/routines/CreditCardValidator;->a:Ljava/util/List;

    .line 143
    const-wide/16 v0, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcommons/validator/routines/CreditCardValidator;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcommons/validator/routines/CreditCardValidator;->a:Ljava/util/List;

    sget-object v1, Lcommons/validator/routines/CreditCardValidator;->VISA_VALIDATOR:Lcommons/validator/routines/CodeValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    const-wide/16 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcommons/validator/routines/CreditCardValidator;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcommons/validator/routines/CreditCardValidator;->a:Ljava/util/List;

    sget-object v1, Lcommons/validator/routines/CreditCardValidator;->AMEX_VALIDATOR:Lcommons/validator/routines/CodeValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    const-wide/16 v0, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcommons/validator/routines/CreditCardValidator;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcommons/validator/routines/CreditCardValidator;->a:Ljava/util/List;

    sget-object v1, Lcommons/validator/routines/CreditCardValidator;->MASTERCARD_VALIDATOR:Lcommons/validator/routines/CodeValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_2
    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Lcommons/validator/routines/CreditCardValidator;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcommons/validator/routines/CreditCardValidator;->a:Ljava/util/List;

    sget-object v1, Lcommons/validator/routines/CreditCardValidator;->DISCOVER_VALIDATOR:Lcommons/validator/routines/CodeValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_3
    const-wide/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0, v1}, Lcommons/validator/routines/CreditCardValidator;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lcommons/validator/routines/CreditCardValidator;->a:Ljava/util/List;

    sget-object v1, Lcommons/validator/routines/CreditCardValidator;->DINERS_VALIDATOR:Lcommons/validator/routines/CodeValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_4
    return-void
.end method

.method public constructor <init>([Lcommons/validator/routines/CodeValidator;)V
    .locals 3

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcommons/validator/routines/CreditCardValidator;->a:Ljava/util/List;

    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Card validators are missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 173
    iget-object v1, p0, Lcommons/validator/routines/CreditCardValidator;->a:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    return-void
.end method

.method private a(JJ)Z
    .locals 5

    .prologue
    .line 226
    and-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 186
    :goto_1
    iget-object v0, p0, Lcommons/validator/routines/CreditCardValidator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcommons/validator/routines/CreditCardValidator;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcommons/validator/routines/CodeValidator;

    .line 188
    invoke-virtual {v0, p1}, Lcommons/validator/routines/CodeValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    const/4 v2, 0x1

    goto :goto_0

    .line 186
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    .line 213
    :cond_1
    :goto_0
    return-object v0

    .line 206
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcommons/validator/routines/CreditCardValidator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 207
    iget-object v0, p0, Lcommons/validator/routines/CreditCardValidator;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcommons/validator/routines/CodeValidator;

    .line 208
    invoke-virtual {v0, p1}, Lcommons/validator/routines/CodeValidator;->validate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    if-nez v0, :cond_1

    .line 206
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 213
    goto :goto_0
.end method
