.class public Lcom/smartadserver/android/library/c/h;
.super Ljava/lang/Object;
.source "SASMediationAdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/c/h$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/smartadserver/android/library/c/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/smartadserver/android/library/model/a;

.field private d:Lcom/smartadserver/android/library/ui/SASAdView;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/smartadserver/android/library/c/h;->c:Lcom/smartadserver/android/library/model/a;

    .line 27
    iput-object v0, p0, Lcom/smartadserver/android/library/c/h;->a:Ljava/util/HashMap;

    .line 107
    iput-object p1, p0, Lcom/smartadserver/android/library/c/h;->e:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/smartadserver/android/library/c/h;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 109
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/h;->b:Landroid/util/SparseArray;

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/h;)Lcom/smartadserver/android/library/model/a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/smartadserver/android/library/c/h;->c:Lcom/smartadserver/android/library/model/a;

    return-object v0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/c/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/smartadserver/android/library/c/h;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/c/h;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/smartadserver/android/library/c/h;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method


# virtual methods
.method public a([Lcom/smartadserver/android/library/model/a;J)Lcom/smartadserver/android/library/model/a;
    .locals 14

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/h;->c:Lcom/smartadserver/android/library/model/a;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/h;->a:Ljava/util/HashMap;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 129
    aget-object v2, p1, v0

    .line 130
    invoke-virtual {v2}, Lcom/smartadserver/android/library/model/a;->a()I

    move-result v3

    .line 132
    invoke-static {v3}, Lcom/smartadserver/android/library/c/j;->c(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/smartadserver/android/library/c/h;->a:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/smartadserver/android/library/c/j;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " SDK is not available in this application"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/smartadserver/android/library/model/a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartadserver/android/library/model/a;

    .line 142
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    array-length v1, v0

    if-ge v2, v1, :cond_4

    .line 145
    array-length v1, v0

    sub-int/2addr v1, v2

    int-to-long v4, v1

    div-long v4, p2, v4

    .line 148
    aget-object v3, v0, v2

    .line 149
    invoke-virtual {v3}, Lcom/smartadserver/android/library/model/a;->a()I

    move-result v6

    .line 150
    invoke-virtual {v3}, Lcom/smartadserver/android/library/model/a;->b()Ljava/util/HashMap;

    move-result-object v7

    .line 152
    const-string v1, "SASMediationAdManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "splitTimeout for mediation SDK "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/smartadserver/android/library/c/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 156
    invoke-static {v6}, Lcom/smartadserver/android/library/c/j;->a(I)Ljava/lang/Class;

    move-result-object v8

    .line 157
    if-eqz v8, :cond_2

    .line 160
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 161
    iget-object v9, p0, Lcom/smartadserver/android/library/c/h;->b:Landroid/util/SparseArray;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/smartadserver/android/library/c/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartadserver/android/library/c/i;

    .line 172
    if-eqz v1, :cond_6

    .line 174
    new-instance v8, Lcom/smartadserver/android/library/c/h$a;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/smartadserver/android/library/c/h$a;-><init>(Lcom/smartadserver/android/library/c/h;Lcom/smartadserver/android/library/c/h$1;)V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 179
    monitor-enter v8

    .line 181
    :try_start_1
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->h()Landroid/os/Handler;

    move-result-object v9

    new-instance v12, Lcom/smartadserver/android/library/c/h$1;

    invoke-direct {v12, p0, v1, v7, v8}, Lcom/smartadserver/android/library/c/h$1;-><init>(Lcom/smartadserver/android/library/c/h;Lcom/smartadserver/android/library/c/i;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/h$a;)V

    invoke-virtual {v9, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :try_start_2
    invoke-virtual {v8, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    :goto_4
    :try_start_3
    invoke-virtual {v8}, Lcom/smartadserver/android/library/c/h$a;->a()I

    move-result v7

    .line 193
    const/4 v9, -0x1

    if-ne v7, v9, :cond_3

    .line 195
    invoke-virtual {v8}, Lcom/smartadserver/android/library/c/h$a;->e()V

    .line 197
    :cond_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    const/4 v9, 0x1

    if-ne v7, v9, :cond_5

    .line 202
    iput-object v3, p0, Lcom/smartadserver/android/library/c/h;->c:Lcom/smartadserver/android/library/model/a;

    .line 203
    invoke-interface {v1}, Lcom/smartadserver/android/library/c/i;->a()Lcom/smartadserver/android/library/c/g;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/smartadserver/android/library/model/a;->a(Lcom/smartadserver/android/library/c/g;)V

    .line 223
    :cond_4
    const-string v0, "SASMediationAdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation SDK errors "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/c/h;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/smartadserver/android/library/c/h;->c:Lcom/smartadserver/android/library/model/a;

    return-object v0

    .line 162
    :catch_0
    move-exception v1

    .line 164
    const-string v9, "SASMediationAdManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not instantiate adapter "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 188
    :catch_1
    move-exception v7

    .line 189
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 207
    :cond_5
    if-nez v7, :cond_7

    .line 208
    invoke-virtual {v8}, Lcom/smartadserver/android/library/c/h$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 212
    :goto_5
    iget-object v3, p0, Lcom/smartadserver/android/library/c/h;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    .line 216
    cmp-long v1, v6, v4

    if-gez v1, :cond_6

    .line 217
    sub-long p2, p2, v6

    .line 142
    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_2

    .line 210
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Lcom/smartadserver/android/library/c/j;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Ad network did not respond in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/smartadserver/android/library/c/h;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 234
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/smartadserver/android/library/c/h;->b:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/c/i;

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i;->b()V

    .line 234
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method
