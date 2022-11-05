.class public Lcommons/validator/routines/RegexValidator;
.super Ljava/lang/Object;
.source "RegexValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:[Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcommons/validator/routines/RegexValidator;-><init>(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcommons/validator/routines/RegexValidator;-><init>([Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcommons/validator/routines/RegexValidator;-><init>([Ljava/lang/String;Z)V

    .line 107
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Regular expressions are missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    array-length v0, p1

    new-array v0, v0, [Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcommons/validator/routines/RegexValidator;->a:[Ljava/util/regex/Pattern;

    .line 123
    if-eqz p2, :cond_3

    move v0, v1

    .line 124
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 125
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 126
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regular expression["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 128
    :cond_4
    iget-object v2, p0, Lcommons/validator/routines/RegexValidator;->a:[Ljava/util/regex/Pattern;

    aget-object v3, p1, v1

    invoke-static {v3, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    aput-object v3, v2, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_5
    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 140
    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 143
    :goto_1
    iget-object v2, p0, Lcommons/validator/routines/RegexValidator;->a:[Ljava/util/regex/Pattern;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcommons/validator/routines/RegexValidator;->a:[Ljava/util/regex/Pattern;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    const/4 v1, 0x1

    goto :goto_0

    .line 143
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public match(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    if-nez p1, :cond_1

    move-object v0, v2

    .line 174
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move v0, v1

    .line 163
    :goto_1
    iget-object v3, p0, Lcommons/validator/routines/RegexValidator;->a:[Ljava/util/regex/Pattern;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 164
    iget-object v3, p0, Lcommons/validator/routines/RegexValidator;->a:[Ljava/util/regex/Pattern;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .line 167
    new-array v0, v2, [Ljava/lang/String;

    .line 168
    :goto_2
    if-ge v1, v2, :cond_0

    .line 169
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 163
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 174
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    const-string v0, "RegexValidator{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcommons/validator/routines/RegexValidator;->a:[Ljava/util/regex/Pattern;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 218
    if-lez v0, :cond_0

    .line 219
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    :cond_0
    iget-object v2, p0, Lcommons/validator/routines/RegexValidator;->a:[Ljava/util/regex/Pattern;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 187
    if-nez p1, :cond_0

    move-object v0, v2

    .line 207
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    .line 190
    :goto_1
    iget-object v3, p0, Lcommons/validator/routines/RegexValidator;->a:[Ljava/util/regex/Pattern;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 191
    iget-object v3, p0, Lcommons/validator/routines/RegexValidator;->a:[Ljava/util/regex/Pattern;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 193
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    .line 194
    if-ne v0, v5, :cond_1

    .line 195
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    :goto_2
    if-ge v1, v0, :cond_3

    .line 199
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 200
    if-eqz v4, :cond_2

    .line 201
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 204
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 207
    goto :goto_0
.end method
