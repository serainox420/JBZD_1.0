.class public Lcom/smaato/soma/internal/requests/e;
.super Ljava/lang/Object;
.source "InternalAdSettings.java"


# instance fields
.field private a:Lcom/smaato/soma/d;


# direct methods
.method public constructor <init>(Lcom/smaato/soma/d;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/StringBuffer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/GeneratingAdSettingsRequestFailed;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 43
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/requests/e$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/e$1;-><init>(Lcom/smaato/soma/internal/requests/e;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->a()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-ltz v1, :cond_0

    .line 47
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "pub=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    .line 49
    invoke-virtual {v5}, Lcom/smaato/soma/d;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 47
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->b()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-ltz v1, :cond_1

    .line 53
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&adspace=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    .line 55
    invoke-virtual {v5}, Lcom/smaato/soma/d;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 53
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v1

    invoke-static {v1}, Lcom/smaato/soma/AdType;->getStringForValue(Lcom/smaato/soma/AdType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 61
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/AdType;->VAST:Lcom/smaato/soma/AdType;

    if-ne v1, v2, :cond_b

    .line 62
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&format=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "video"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&videotype=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interstitial"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&formatstrict=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    .line 87
    invoke-virtual {v5}, Lcom/smaato/soma/d;->h()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 85
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/AdType;->VAST:Lcom/smaato/soma/AdType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/AdType;->REWARDED:Lcom/smaato/soma/AdType;

    if-ne v1, v2, :cond_3

    .line 89
    :cond_2
    const-string v1, "&vastver=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, "&linearity=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/AdType;->ALL:Lcom/smaato/soma/AdType;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/AdType;->IMAGE:Lcom/smaato/soma/AdType;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/AdType;->TEXT:Lcom/smaato/soma/AdType;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    .line 95
    invoke-virtual {v1}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/AdType;->RICHMEDIA:Lcom/smaato/soma/AdType;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    .line 96
    invoke-virtual {v1}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/AdType;->NATIVE:Lcom/smaato/soma/AdType;

    if-ne v1, v2, :cond_5

    .line 98
    :cond_4
    const-string v1, "&mediationversion=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_5
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/AdType;->VAST:Lcom/smaato/soma/AdType;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/AdType;->REWARDED:Lcom/smaato/soma/AdType;

    if-ne v1, v2, :cond_d

    .line 103
    :cond_6
    const-string v1, "&response=XML"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :goto_1
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/AdType;->NATIVE:Lcom/smaato/soma/AdType;

    if-ne v1, v2, :cond_7

    .line 109
    const-string v1, "&nver=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->i()Ljava/lang/String;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 112
    const-string v2, "&nsupport="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_7
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->d()Lcom/smaato/soma/AdDimension;

    move-result-object v1

    invoke-static {v1}, Lcom/smaato/soma/AdDimension;->getStringForValue(Lcom/smaato/soma/AdDimension;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 119
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&dimension=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    .line 121
    invoke-virtual {v5}, Lcom/smaato/soma/d;->d()Lcom/smaato/soma/AdDimension;

    move-result-object v5

    invoke-static {v5}, Lcom/smaato/soma/AdDimension;->getStringForValue(Lcom/smaato/soma/AdDimension;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 119
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&dimensionstrict="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v2}, Lcom/smaato/soma/d;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    :cond_8
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->e()I

    move-result v1

    if-lez v1, :cond_9

    .line 126
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&width=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    .line 128
    invoke-virtual {v5}, Lcom/smaato/soma/d;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 126
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_9
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->f()I

    move-result v1

    if-lez v1, :cond_a

    .line 132
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&height=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    .line 134
    invoke-virtual {v5}, Lcom/smaato/soma/d;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 132
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :cond_a
    return-object v0

    .line 69
    :cond_b
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    invoke-virtual {v1}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/AdType;->REWARDED:Lcom/smaato/soma/AdType;

    if-ne v1, v2, :cond_c

    .line 70
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&format=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "video"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&videotype=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    .line 74
    invoke-virtual {v5}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v5

    invoke-static {v5}, Lcom/smaato/soma/AdType;->getStringForValue(Lcom/smaato/soma/AdType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 73
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    throw v0

    .line 78
    :cond_c
    :try_start_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&format=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/e;->a:Lcom/smaato/soma/d;

    .line 80
    invoke-virtual {v5}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v5

    invoke-static {v5}, Lcom/smaato/soma/AdType;->getStringForValue(Lcom/smaato/soma/AdType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 78
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    new-instance v1, Lcom/smaato/soma/exception/GeneratingAdSettingsRequestFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/GeneratingAdSettingsRequestFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 105
    :cond_d
    :try_start_2
    const-string v1, "&response=JSON"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method
