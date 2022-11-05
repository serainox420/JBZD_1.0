.class public abstract Lcommons/validator/routines/AbstractNumberValidator;
.super Lcommons/validator/routines/AbstractFormatValidator;
.source "AbstractNumberValidator.java"


# static fields
.field public static final CURRENCY_FORMAT:I = 0x1

.field public static final PERCENT_FORMAT:I = 0x2

.field public static final STANDARD_FORMAT:I


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method public constructor <init>(ZIZ)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcommons/validator/routines/AbstractFormatValidator;-><init>(Z)V

    .line 63
    iput-boolean p3, p0, Lcommons/validator/routines/AbstractNumberValidator;->a:Z

    .line 64
    iput p2, p0, Lcommons/validator/routines/AbstractNumberValidator;->b:I

    .line 65
    return-void
.end method


# virtual methods
.method protected a(Ljava/text/NumberFormat;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 212
    invoke-virtual {p0}, Lcommons/validator/routines/AbstractNumberValidator;->isStrict()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcommons/validator/routines/AbstractNumberValidator;->isAllowFractions()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/text/NumberFormat;->isParseIntegerOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {p1}, Ljava/text/NumberFormat;->getMinimumFractionDigits()I

    move-result v0

    .line 219
    invoke-virtual {p1}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v2

    .line 220
    if-eq v0, v2, :cond_4

    move v0, v1

    .line 221
    goto :goto_0

    .line 224
    :cond_4
    instance-of v1, p1, Ljava/text/DecimalFormat;

    if-eqz v1, :cond_6

    .line 225
    check-cast p1, Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Ljava/text/DecimalFormat;->getMultiplier()I

    move-result v1

    .line 226
    const/16 v2, 0x64

    if-ne v1, v2, :cond_5

    .line 227
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 228
    :cond_5
    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 229
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 231
    :cond_6
    iget v1, p0, Lcommons/validator/routines/AbstractNumberValidator;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 232
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 156
    if-nez p1, :cond_1

    move-object v1, v0

    .line 157
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 161
    :cond_0
    :goto_1
    return-object v0

    .line 156
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcommons/validator/routines/AbstractNumberValidator;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    .line 161
    invoke-virtual {p0, v1, v0}, Lcommons/validator/routines/AbstractNumberValidator;->a(Ljava/lang/String;Ljava/text/Format;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 187
    .line 188
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    .line 189
    :goto_0
    if-nez v0, :cond_2

    .line 190
    invoke-virtual {p0, p2}, Lcommons/validator/routines/AbstractNumberValidator;->a(Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    .line 198
    :goto_1
    invoke-virtual {p0, v0}, Lcommons/validator/routines/AbstractNumberValidator;->a(Ljava/text/NumberFormat;)I

    move-result v2

    if-nez v2, :cond_0

    .line 199
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 201
    :cond_0
    return-object v0

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :cond_2
    if-nez p2, :cond_3

    .line 192
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_3
    new-instance v2, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, p2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 195
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    goto :goto_1
.end method

.method protected a(Ljava/util/Locale;)Ljava/text/Format;
    .locals 1

    .prologue
    .line 245
    .line 246
    iget v0, p0, Lcommons/validator/routines/AbstractNumberValidator;->b:I

    packed-switch v0, :pswitch_data_0

    .line 262
    if-nez p1, :cond_2

    .line 263
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    .line 248
    :pswitch_0
    if-nez p1, :cond_0

    .line 249
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_0
    invoke-static {p1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    goto :goto_0

    .line 255
    :pswitch_1
    if-nez p1, :cond_1

    .line 256
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_1
    invoke-static {p1}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_2
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract b(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;
.end method

.method public getFormatType()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcommons/validator/routines/AbstractNumberValidator;->b:I

    return v0
.end method

.method public isAllowFractions()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcommons/validator/routines/AbstractNumberValidator;->a:Z

    return v0
.end method

.method public isInRange(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0, p1, p2}, Lcommons/validator/routines/AbstractNumberValidator;->minValue(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcommons/validator/routines/AbstractNumberValidator;->maxValue(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lcommons/validator/routines/AbstractNumberValidator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public maxValue(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0}, Lcommons/validator/routines/AbstractNumberValidator;->isAllowFractions()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 140
    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public minValue(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0}, Lcommons/validator/routines/AbstractNumberValidator;->isAllowFractions()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
