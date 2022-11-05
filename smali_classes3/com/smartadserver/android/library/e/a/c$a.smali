.class Lcom/smartadserver/android/library/e/a/c$a;
.super Ljava/lang/Object;
.source "SASHttpAdElementProvider.java"

# interfaces
.implements Lcom/smartadserver/android/library/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/e/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/e/a/c;

.field private b:Lcom/smartadserver/android/library/ui/SASAdView$a;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/e/a/c;Lcom/smartadserver/android/library/ui/SASAdView$a;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/smartadserver/android/library/e/a/c$a;->b:Lcom/smartadserver/android/library/ui/SASAdView$a;

    .line 111
    iput-object p3, p0, Lcom/smartadserver/android/library/e/a/c$a;->c:Ljava/lang/String;

    .line 112
    iput-wide p4, p0, Lcom/smartadserver/android/library/e/a/c$a;->d:J

    .line 113
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 7

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad call failed with exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->c(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;)Lcom/smartadserver/android/library/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    iget-object v1, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v1}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;)Lcom/smartadserver/android/library/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    iget-object v1, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v1}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;)Lcom/smartadserver/android/library/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/a/a;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;Z)Z

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->b:Lcom/smartadserver/android/library/ui/SASAdView$a;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$a;->adLoadingFailed(Ljava/lang/Exception;)V

    .line 164
    const/16 v6, 0xa

    .line 165
    instance-of v0, p1, Lcom/smartadserver/android/library/exception/SASAdTimeoutException;

    if-eqz v0, :cond_1

    .line 166
    const/16 v6, 0x64

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/e/a/c;->c(Lcom/smartadserver/android/library/e/a/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/e/a/c$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v2}, Lcom/smartadserver/android/library/e/a/c;->d(Lcom/smartadserver/android/library/e/a/c;)Lcom/smartadserver/android/library/e/a/a;

    move-result-object v2

    iget-object v3, v2, Lcom/smartadserver/android/library/e/a/a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/smartadserver/android/library/e/a/c;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v2}, Lcom/smartadserver/android/library/e/a/c;->b(Lcom/smartadserver/android/library/e/a/c;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/smartadserver/android/library/exception/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;Lcom/smartadserver/android/library/a/a;)Lcom/smartadserver/android/library/a/a;

    .line 170
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 116
    .line 118
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;)Lcom/smartadserver/android/library/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    iget-object v2, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v2}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;)Lcom/smartadserver/android/library/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartadserver/android/library/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    iget-object v2, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v2}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;)Lcom/smartadserver/android/library/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartadserver/android/library/a/a;->a()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;Z)Z

    .line 123
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/smartadserver/android/library/e/a/c$a;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 125
    invoke-static {}, Lcom/smartadserver/android/library/e/a/c;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSuccess:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/smartadserver/android/library/e/a/c;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remainingTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p1, v2, v3}, Lcom/smartadserver/android/library/b/a;->a(Ljava/lang/String;J)Lcom/smartadserver/android/library/model/SASAdElement;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/smartadserver/android/library/exception/SASVASTParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/smartadserver/android/library/exception/SASAdTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 130
    :try_start_1
    iget-object v2, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v2}, Lcom/smartadserver/android/library/e/a/c;->b(Lcom/smartadserver/android/library/e/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 131
    if-lez v2, :cond_1

    .line 132
    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/model/SASAdElement;->setInsertionId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/smartadserver/android/library/exception/SASVASTParsingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/smartadserver/android/library/exception/SASAdTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 137
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad call succeeded with response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/smartadserver/android/library/e/a/c$a;->b:Lcom/smartadserver/android/library/ui/SASAdView$a;

    invoke-interface {v2, v0}, Lcom/smartadserver/android/library/ui/SASAdView$a;->adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/smartadserver/android/library/exception/SASVASTParsingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/smartadserver/android/library/exception/SASAdTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :goto_1
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;Lcom/smartadserver/android/library/a/a;)Lcom/smartadserver/android/library/a/a;

    .line 155
    :goto_2
    return-void

    .line 140
    :cond_2
    :try_start_3
    const-string v0, "There is no ad to deliver on this placement. Please check the ad request parameters (in the loadAd method) and the ad programming on the manage interface: "

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->b(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->b:Lcom/smartadserver/android/library/ui/SASAdView$a;

    new-instance v2, Lcom/smartadserver/android/library/exception/SASNoAdToDeliverException;

    const-string v3, "No ad to deliver or invalid ad request parameters"

    invoke-direct {v2, v3}, Lcom/smartadserver/android/library/exception/SASNoAdToDeliverException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/smartadserver/android/library/ui/SASAdView$a;->adLoadingFailed(Ljava/lang/Exception;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/smartadserver/android/library/exception/SASVASTParsingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/smartadserver/android/library/exception/SASAdTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    :try_start_4
    new-instance v2, Lcom/smartadserver/android/library/exception/SASInvalidJSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred when parsing JSON ad content. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/smartadserver/android/library/exception/SASInvalidJSONException;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/smartadserver/android/library/e/a/c$a;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;Lcom/smartadserver/android/library/a/a;)Lcom/smartadserver/android/library/a/a;

    goto :goto_2

    .line 146
    :catch_1
    move-exception v0

    .line 148
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/e/a/c$a;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;Lcom/smartadserver/android/library/a/a;)Lcom/smartadserver/android/library/a/a;

    goto :goto_2

    .line 149
    :catch_2
    move-exception v0

    .line 151
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/e/a/c$a;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 153
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;Lcom/smartadserver/android/library/a/a;)Lcom/smartadserver/android/library/a/a;

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/smartadserver/android/library/e/a/c$a;->a:Lcom/smartadserver/android/library/e/a/c;

    invoke-static {v2, v1}, Lcom/smartadserver/android/library/e/a/c;->a(Lcom/smartadserver/android/library/e/a/c;Lcom/smartadserver/android/library/a/a;)Lcom/smartadserver/android/library/a/a;

    throw v0

    .line 134
    :catch_3
    move-exception v2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
