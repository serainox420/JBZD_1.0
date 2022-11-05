.class public Lcommons/validator/routines/IntegerValidator;
.super Lcommons/validator/routines/AbstractNumberValidator;
.source "IntegerValidator.java"


# static fields
.field private static final a:Lcommons/validator/routines/IntegerValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcommons/validator/routines/IntegerValidator;

    invoke-direct {v0}, Lcommons/validator/routines/IntegerValidator;-><init>()V

    sput-object v0, Lcommons/validator/routines/IntegerValidator;->a:Lcommons/validator/routines/IntegerValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcommons/validator/routines/IntegerValidator;-><init>(ZI)V

    .line 84
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcommons/validator/routines/AbstractNumberValidator;-><init>(ZIZ)V

    .line 109
    return-void
.end method

.method public static getInstance()Lcommons/validator/routines/IntegerValidator;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcommons/validator/routines/IntegerValidator;->a:Lcommons/validator/routines/IntegerValidator;

    return-object v0
.end method


# virtual methods
.method protected b(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 246
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 248
    const-wide/32 v0, -0x80000000

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/Integer;

    long-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method

.method public isInRange(III)Z
    .locals 1

    .prologue
    .line 171
    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInRange(Ljava/lang/Integer;II)Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcommons/validator/routines/IntegerValidator;->isInRange(III)Z

    move-result v0

    return v0
.end method

.method public maxValue(II)Z
    .locals 1

    .prologue
    .line 220
    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxValue(Ljava/lang/Integer;I)Z
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcommons/validator/routines/IntegerValidator;->maxValue(II)Z

    move-result v0

    return v0
.end method

.method public minValue(II)Z
    .locals 1

    .prologue
    .line 196
    if-lt p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minValue(Ljava/lang/Integer;I)Z
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcommons/validator/routines/IntegerValidator;->minValue(II)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {p0, p1, v0, v1}, Lcommons/validator/routines/IntegerValidator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0}, Lcommons/validator/routines/IntegerValidator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lcommons/validator/routines/IntegerValidator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public validate(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcommons/validator/routines/IntegerValidator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
