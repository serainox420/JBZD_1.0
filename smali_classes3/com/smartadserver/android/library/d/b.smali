.class public Lcom/smartadserver/android/library/d/b;
.super Ljava/lang/Object;
.source "SASCacheManifestUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartadserver/android/library/exception/SASAdCachingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-static {p0}, Lcom/smartadserver/android/library/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdCachingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not get cache manifest file from URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdCachingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    const-string v1, "\\r?\\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move v5, v2

    move v1, v3

    move v4, v2

    .line 43
    :goto_0
    array-length v0, v7

    if-ge v5, v0, :cond_9

    .line 44
    aget-object v0, v7, v5

    .line 45
    const-string v8, "#"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v1

    move v1, v4

    .line 43
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v1

    move v1, v0

    goto :goto_0

    .line 47
    :cond_1
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v0, v1

    move v1, v4

    goto :goto_1

    .line 49
    :cond_2
    const-string v8, "CACHE MANIFEST"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v0, v1

    move v1, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const-string v8, "NETWORK:"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v0, v2

    move v1, v4

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    const-string v8, "FALLBACK:"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v0, v2

    move v1, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_5
    const-string v8, "CACHE:"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v0, v3

    move v1, v4

    .line 56
    goto :goto_1

    .line 57
    :cond_6
    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_7
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move v0, v1

    move v1, v4

    goto :goto_1

    .line 70
    :cond_9
    if-nez v4, :cond_a

    .line 71
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdCachingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing \"CACHE MANIFEST\" declaration in manifest file at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdCachingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 90
    const-string v1, "<html[^>]*manifest=[\'\"]([^\'\"]+)[\'\"][^>]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 91
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    const-string v0, " manifest="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 106
    invoke-static {p0}, Lcom/smartadserver/android/library/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    return-object v0
.end method
