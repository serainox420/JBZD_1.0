.class Lcom/adcolony/sdk/bh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bh;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/adcolony/sdk/bk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/bk;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Ljava/util/Map;

.field final synthetic h:Lcom/adcolony/sdk/bh;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bh;Ljava/lang/String;Lcom/adcolony/sdk/bk;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    iput-object p2, p0, Lcom/adcolony/sdk/bh$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    iput p4, p0, Lcom/adcolony/sdk/bh$1;->c:I

    iput-object p5, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/adcolony/sdk/bh$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/adcolony/sdk/bh$1;->f:Ljava/util/Map;

    iput-object p8, p0, Lcom/adcolony/sdk/bh$1;->g:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 68
    sget-object v0, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    .line 69
    const-string v1, "Error occurred when handling response."

    .line 71
    iget-object v1, p0, Lcom/adcolony/sdk/bh$1;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bh$1;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/bn$a;->v:Lcom/adcolony/sdk/bn$a;

    .line 73
    const-string v1, "Error Occurred in handleResponse: Response is null or empty"

    .line 74
    iget-object v1, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    iget v1, p0, Lcom/adcolony/sdk/bh$1;->c:I

    const/16 v2, 0x197

    if-ne v1, v2, :cond_3

    .line 77
    sget-object v0, Lcom/adcolony/sdk/bn$a;->c:Lcom/adcolony/sdk/bn$a;

    .line 78
    const-string v1, "Error Occurred in handleResponse: responseCode=407"

    .line 79
    iget-object v1, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    goto :goto_0

    .line 84
    :cond_3
    sget-object v1, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    if-ne v0, v1, :cond_5

    iget v1, p0, Lcom/adcolony/sdk/bh$1;->c:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_4

    iget v1, p0, Lcom/adcolony/sdk/bh$1;->c:I

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_5

    .line 86
    :cond_4
    sget-object v0, Lcom/adcolony/sdk/bn$a;->f:Lcom/adcolony/sdk/bn$a;

    .line 87
    const-string v1, "Error Occurred in handleResponse: Web error occurred."

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/adcolony/sdk/bh$1;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/adcolony/sdk/co;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 92
    if-nez v1, :cond_6

    .line 94
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/bn$a;->f:Lcom/adcolony/sdk/bn$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Occurred in handleResponse: JSON is null, this is the response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 95
    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;ZLcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 99
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    sget-object v1, Lcom/adcolony/sdk/bn$a;->f:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    goto :goto_0

    .line 104
    :cond_6
    const-string v2, "error"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 105
    if-eqz v2, :cond_1d

    .line 107
    sget-object v0, Lcom/adcolony/sdk/bn$a;->f:Lcom/adcolony/sdk/bn$a;

    move-object v2, v0

    .line 109
    :goto_1
    iget v0, p0, Lcom/adcolony/sdk/bh$1;->c:I

    const/16 v3, 0x190

    if-lt v0, v3, :cond_7

    iget v0, p0, Lcom/adcolony/sdk/bh$1;->c:I

    const/16 v3, 0x1f4

    if-ge v0, v3, :cond_7

    .line 118
    sget-object v0, Lcom/adcolony/sdk/bn;->an:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 119
    sget-object v0, Lcom/adcolony/sdk/bn;->an:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    if-nez v0, :cond_7

    .line 121
    sget-object v2, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    .line 126
    :cond_7
    sget-object v0, Lcom/adcolony/sdk/bn;->am:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 127
    sget-object v0, Lcom/adcolony/sdk/bn;->am:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    const-string v3, "bannedApp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "disabledApp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "serverMaintenance"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 129
    :cond_8
    sget-object v2, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    move-object v4, v2

    .line 134
    :goto_2
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v2, "googleIap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v2, "amazonIap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 135
    :cond_9
    sget-object v0, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    if-eq v4, v0, :cond_f

    .line 136
    const-string v2, "Error occurred in handleResponse: IAP"

    .line 137
    const-string v0, "error"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 138
    const-string v0, "error"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    invoke-virtual {v3}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "localErr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", errMsg="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v8}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    :cond_a
    const-string v0, "error_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 144
    const-string v0, "error_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": contains error_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v2, "invalidConsumerKey"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": InvalidConsumerKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    sget-object v4, Lcom/adcolony/sdk/bn$a;->z:Lcom/adcolony/sdk/bn$a;

    .line 149
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    const-string v3, "Error Occurred in handleResponse: InvalidConsumerKey"

    sget-object v5, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 150
    invoke-virtual {v2, v4, v3, v7, v5}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;ZLcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 161
    :cond_b
    :goto_3
    const-string v2, "disabledApp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": APP DISABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    sget-object v4, Lcom/adcolony/sdk/bn$a;->h:Lcom/adcolony/sdk/bn$a;

    .line 167
    :goto_4
    iget-object v2, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    invoke-virtual {v2}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", message="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_c
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    goto/16 :goto_0

    .line 154
    :cond_d
    const-string v2, "bannedApp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": APP BANNED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    sget-object v4, Lcom/adcolony/sdk/bn$a;->i:Lcom/adcolony/sdk/bn$a;

    .line 157
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    const-string v3, "Error Occurred in handleResponse: BANNED APP"

    sget-object v5, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_BANNED:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 158
    invoke-virtual {v2, v4, v3, v7, v5}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;ZLcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    goto :goto_3

    .line 165
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 175
    :cond_f
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v2, "config"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 176
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requireSig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/bm;->w()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->w()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 179
    sget-object v0, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    if-ne v4, v0, :cond_10

    .line 180
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    iget-object v2, p0, Lcom/adcolony/sdk/bh$1;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adcolony/sdk/bz;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 181
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/bn$a;->n:Lcom/adcolony/sdk/bn$a;

    const-string v2, "Error Occurred in handleResponse: malformed results; signature not validated"

    sget-object v3, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 182
    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;ZLcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 187
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    sget-object v1, Lcom/adcolony/sdk/bn$a;->n:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    goto/16 :goto_0

    .line 195
    :cond_10
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 198
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v2, "config"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 199
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    iget-object v2, p0, Lcom/adcolony/sdk/bh$1;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->g:Ljava/util/Map;

    iget-object v4, p0, Lcom/adcolony/sdk/bh$1;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/bh;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/adcolony/sdk/bk;)V

    .line 226
    :goto_5
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    iget-object v2, p0, Lcom/adcolony/sdk/bh$1;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adcolony/sdk/bz;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->J()V

    goto/16 :goto_0

    .line 200
    :cond_11
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v2, "init"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 201
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    iget-object v2, p0, Lcom/adcolony/sdk/bh$1;->g:Ljava/util/Map;

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adcolony/sdk/bh;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/adcolony/sdk/bk;)V

    goto :goto_5

    .line 202
    :cond_12
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v2, "digiStart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 203
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    iget-object v2, p0, Lcom/adcolony/sdk/bh$1;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->g:Ljava/util/Map;

    iget-object v4, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adcolony/sdk/bh;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V

    goto :goto_5

    .line 204
    :cond_13
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v2, "digiFinish"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 205
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    iget-object v2, p0, Lcom/adcolony/sdk/bh$1;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adcolony/sdk/bh;->a(Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V

    goto :goto_5

    .line 206
    :cond_14
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v2, "customReward"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 207
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    iget-object v2, p0, Lcom/adcolony/sdk/bh$1;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->g:Ljava/util/Map;

    iget-object v4, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adcolony/sdk/bh;->c(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V

    goto :goto_5

    .line 208
    :cond_15
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v2, "logs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 209
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    iget-object v2, p0, Lcom/adcolony/sdk/bh$1;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->g:Ljava/util/Map;

    iget-object v4, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adcolony/sdk/bh;->d(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V

    goto/16 :goto_5

    .line 210
    :cond_16
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v2, "stats"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 211
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    iget-object v2, p0, Lcom/adcolony/sdk/bh$1;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->g:Ljava/util/Map;

    iget-object v4, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adcolony/sdk/bh;->e(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V

    goto/16 :goto_5

    .line 212
    :cond_17
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v2, "googleIap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 213
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    iget-object v2, p0, Lcom/adcolony/sdk/bh$1;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->g:Ljava/util/Map;

    iget-object v5, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/bh;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bn$a;Lcom/adcolony/sdk/bk;)V

    goto/16 :goto_5

    .line 214
    :cond_18
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v2, "amazonIap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 215
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    iget-object v2, p0, Lcom/adcolony/sdk/bh$1;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->g:Ljava/util/Map;

    iget-object v5, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/bh;->b(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bn$a;Lcom/adcolony/sdk/bk;)V

    goto/16 :goto_5

    .line 216
    :cond_19
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    const-string v2, "serverReward"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 217
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->h:Lcom/adcolony/sdk/bh;

    iget-object v2, p0, Lcom/adcolony/sdk/bh$1;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->g:Ljava/util/Map;

    iget-object v4, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adcolony/sdk/bh;->b(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V

    goto/16 :goto_5

    .line 219
    :cond_1a
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid method attempted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/bh$1;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/adcolony/sdk/bn$b;->b:Lcom/adcolony/sdk/bn$b;

    .line 220
    invoke-virtual {v0, v2, v3, v7, v5}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V

    .line 223
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    sget-object v2, Lcom/adcolony/sdk/bn$a;->q:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    goto/16 :goto_5

    .line 231
    :cond_1b
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    const-string v1, "handleResponseMethodNull"

    sget-object v2, Lcom/adcolony/sdk/bn$b;->b:Lcom/adcolony/sdk/bn$b;

    .line 232
    invoke-virtual {v0, v1, v2, v7, v5}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V

    .line 235
    iget-object v0, p0, Lcom/adcolony/sdk/bh$1;->b:Lcom/adcolony/sdk/bk;

    sget-object v1, Lcom/adcolony/sdk/bn$a;->q:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    goto/16 :goto_0

    :cond_1c
    move-object v4, v2

    goto/16 :goto_2

    :cond_1d
    move-object v2, v0

    goto/16 :goto_1
.end method
