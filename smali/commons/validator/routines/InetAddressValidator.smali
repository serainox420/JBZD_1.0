.class public Lcommons/validator/routines/InetAddressValidator;
.super Ljava/lang/Object;
.source "InetAddressValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Lcommons/validator/routines/InetAddressValidator;


# instance fields
.field private final b:Lcommons/validator/routines/RegexValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcommons/validator/routines/InetAddressValidator;

    invoke-direct {v0}, Lcommons/validator/routines/InetAddressValidator;-><init>()V

    sput-object v0, Lcommons/validator/routines/InetAddressValidator;->a:Lcommons/validator/routines/InetAddressValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcommons/validator/routines/RegexValidator;

    const-string v1, "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$"

    invoke-direct {v0, v1}, Lcommons/validator/routines/RegexValidator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcommons/validator/routines/InetAddressValidator;->b:Lcommons/validator/routines/RegexValidator;

    return-void
.end method

.method public static getInstance()Lcommons/validator/routines/InetAddressValidator;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcommons/validator/routines/InetAddressValidator;->a:Lcommons/validator/routines/InetAddressValidator;

    return-object v0
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcommons/validator/routines/InetAddressValidator;->isValidInet4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcommons/validator/routines/InetAddressValidator;->isValidInet6Address(Ljava/lang/String;)Z

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

.method public isValidInet4Address(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 76
    iget-object v2, p0, Lcommons/validator/routines/InetAddressValidator;->b:Lcommons/validator/routines/RegexValidator;

    invoke-virtual {v2, p1}, Lcommons/validator/routines/RegexValidator;->match(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 78
    if-nez v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v0

    .line 83
    :goto_1
    const/4 v4, 0x3

    if-gt v2, v4, :cond_3

    .line 84
    aget-object v4, v3, v2

    .line 85
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 97
    const/16 v6, 0xff

    if-gt v5, v6, :cond_0

    .line 101
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v1, :cond_2

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 107
    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isValidInet6Address(Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 118
    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_1

    move v7, v6

    .line 119
    :goto_0
    if-eqz v7, :cond_2

    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "::"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 183
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v7, v3

    .line 118
    goto :goto_0

    .line 122
    :cond_2
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    const-string v0, ":"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :cond_4
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 127
    if-eqz v7, :cond_b

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    const-string v0, ""

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 137
    :goto_3
    array-length v0, v1

    if-gt v0, v10, :cond_0

    move v2, v3

    move v4, v3

    move v5, v3

    .line 142
    :goto_4
    array-length v0, v1

    if-ge v2, v0, :cond_9

    .line 143
    aget-object v0, v1, v2

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 145
    add-int/lit8 v0, v4, 0x1

    .line 146
    if-gt v0, v6, :cond_0

    .line 178
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v4, v0

    .line 142
    :goto_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 132
    :cond_6
    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 133
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 151
    :cond_7
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v9, :cond_8

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_0

    const/4 v4, 0x6

    if-gt v2, v4, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Lcommons/validator/routines/InetAddressValidator;->isValidInet4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    add-int/lit8 v5, v5, 0x2

    move v4, v3

    .line 163
    goto :goto_6

    .line 165
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x4

    if-gt v4, v8, :cond_0

    .line 170
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v0, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 174
    if-ltz v0, :cond_0

    const v4, 0xffff

    if-gt v0, v4, :cond_0

    move v0, v3

    goto :goto_5

    .line 180
    :cond_9
    if-ge v5, v10, :cond_a

    if-eqz v7, :cond_0

    :cond_a
    move v3, v6

    .line 183
    goto/16 :goto_1

    .line 171
    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_b
    move-object v1, v0

    goto :goto_3
.end method
