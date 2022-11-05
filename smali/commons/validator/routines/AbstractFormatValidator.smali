.class public abstract Lcommons/validator/routines/AbstractFormatValidator;
.super Ljava/lang/Object;
.source "AbstractFormatValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p1, p0, Lcommons/validator/routines/AbstractFormatValidator;->a:Z

    .line 47
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/text/Format;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 181
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 182
    invoke-virtual {p2, p1, v2}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    move-object v0, v1

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcommons/validator/routines/AbstractFormatValidator;->isStrict()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    move-object v0, v1

    .line 188
    goto :goto_0

    .line 191
    :cond_2
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0, v0, p2}, Lcommons/validator/routines/AbstractFormatValidator;->b(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p2, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;
.end method

.method protected abstract b(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;
.end method

.method public format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {p0, p1, v0, v1}, Lcommons/validator/routines/AbstractFormatValidator;->format(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0}, Lcommons/validator/routines/AbstractFormatValidator;->format(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0, p2, p3}, Lcommons/validator/routines/AbstractFormatValidator;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    .line 158
    invoke-virtual {p0, p1, v0}, Lcommons/validator/routines/AbstractFormatValidator;->a(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcommons/validator/routines/AbstractFormatValidator;->format(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStrict()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcommons/validator/routines/AbstractFormatValidator;->a:Z

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {p0, p1, v0, v1}, Lcommons/validator/routines/AbstractFormatValidator;->isValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0}, Lcommons/validator/routines/AbstractFormatValidator;->isValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public abstract isValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Z
.end method

.method public isValid(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcommons/validator/routines/AbstractFormatValidator;->isValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method
