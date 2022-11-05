.class public Lcommons/validator/routines/DoubleValidator;
.super Lcommons/validator/routines/AbstractNumberValidator;
.source "DoubleValidator.java"


# static fields
.field private static final a:Lcommons/validator/routines/DoubleValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcommons/validator/routines/DoubleValidator;

    invoke-direct {v0}, Lcommons/validator/routines/DoubleValidator;-><init>()V

    sput-object v0, Lcommons/validator/routines/DoubleValidator;->a:Lcommons/validator/routines/DoubleValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcommons/validator/routines/DoubleValidator;-><init>(ZI)V

    .line 84
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcommons/validator/routines/AbstractNumberValidator;-><init>(ZIZ)V

    .line 109
    return-void
.end method

.method public static getInstance()Lcommons/validator/routines/DoubleValidator;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcommons/validator/routines/DoubleValidator;->a:Lcommons/validator/routines/DoubleValidator;

    return-object v0
.end method


# virtual methods
.method protected b(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 245
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object p1, v0

    goto :goto_0
.end method

.method public isInRange(DDD)Z
    .locals 1

    .prologue
    .line 171
    cmpl-double v0, p1, p3

    if-ltz v0, :cond_0

    cmpg-double v0, p1, p5

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInRange(Ljava/lang/Double;DD)Z
    .locals 8

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcommons/validator/routines/DoubleValidator;->isInRange(DDD)Z

    move-result v0

    return v0
.end method

.method public maxValue(DD)Z
    .locals 1

    .prologue
    .line 220
    cmpg-double v0, p1, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxValue(Ljava/lang/Double;D)Z
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcommons/validator/routines/DoubleValidator;->maxValue(DD)Z

    move-result v0

    return v0
.end method

.method public minValue(DD)Z
    .locals 1

    .prologue
    .line 196
    cmpl-double v0, p1, p3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minValue(Ljava/lang/Double;D)Z
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcommons/validator/routines/DoubleValidator;->minValue(DD)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {p0, p1, v0, v1}, Lcommons/validator/routines/DoubleValidator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0}, Lcommons/validator/routines/DoubleValidator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lcommons/validator/routines/DoubleValidator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public validate(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcommons/validator/routines/DoubleValidator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method
