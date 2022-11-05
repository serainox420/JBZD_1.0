.class public Lcom/flurry/sdk/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Z

.field public b:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/flurry/sdk/ay;

.field private g:Lcom/flurry/sdk/r;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/media/AudioManager;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:I

.field private m:Z

.field private final n:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ls;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/flurry/sdk/bk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bk;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/ay;Lcom/flurry/sdk/r;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/bk;->i:Ljava/lang/ref/WeakReference;

    .line 62
    iput-object v6, p0, Lcom/flurry/sdk/bk;->j:Landroid/media/AudioManager;

    .line 66
    iput-boolean v1, p0, Lcom/flurry/sdk/bk;->a:Z

    .line 67
    iput v1, p0, Lcom/flurry/sdk/bk;->b:I

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/flurry/sdk/bk;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    iput v1, p0, Lcom/flurry/sdk/bk;->l:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/bk;->m:Z

    .line 75
    new-instance v0, Lcom/flurry/sdk/bk$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/bk$1;-><init>(Lcom/flurry/sdk/bk;)V

    iput-object v0, p0, Lcom/flurry/sdk/bk;->n:Lcom/flurry/sdk/kh;

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AdUnit is null while creating internal adUnit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/bk;->f:Lcom/flurry/sdk/ay;

    .line 89
    iput-object p2, p0, Lcom/flurry/sdk/bk;->g:Lcom/flurry/sdk/r;

    .line 90
    iput-object p3, p0, Lcom/flurry/sdk/bk;->d:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/flurry/sdk/mh;->b()Lcom/flurry/sdk/mh;

    move-result-object v0

    .line 1070
    iget-object v0, v0, Lcom/flurry/sdk/mh;->a:Lcom/flurry/sdk/mj;

    .line 93
    if-eqz v0, :cond_1

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1484
    sget-object v2, Lcom/flurry/sdk/mj$a;->a:Lcom/flurry/sdk/mj$a;

    iget-object v2, v2, Lcom/flurry/sdk/mj$a;->q:Ljava/lang/String;

    invoke-interface {v0}, Lcom/flurry/sdk/mj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    sget-object v2, Lcom/flurry/sdk/mj$a;->b:Lcom/flurry/sdk/mj$a;

    iget-object v2, v2, Lcom/flurry/sdk/mj$a;->q:Ljava/lang/String;

    invoke-interface {v0}, Lcom/flurry/sdk/mj;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    sget-object v2, Lcom/flurry/sdk/mj$a;->d:Lcom/flurry/sdk/mj$a;

    iget-object v2, v2, Lcom/flurry/sdk/mj$a;->q:Ljava/lang/String;

    invoke-interface {v0}, Lcom/flurry/sdk/mj;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    sget-object v2, Lcom/flurry/sdk/mj$a;->c:Lcom/flurry/sdk/mj$a;

    iget-object v2, v2, Lcom/flurry/sdk/mj$a;->q:Ljava/lang/String;

    invoke-interface {v0}, Lcom/flurry/sdk/mj;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    sget-object v0, Lcom/flurry/sdk/mj$a;->e:Lcom/flurry/sdk/mj$a;

    iget-object v0, v0, Lcom/flurry/sdk/mj$a;->q:Ljava/lang/String;

    .line 2104
    iget-object v2, p0, Lcom/flurry/sdk/bk;->f:Lcom/flurry/sdk/ay;

    .line 3058
    iget-object v2, v2, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 2104
    iget-object v2, v2, Lcom/flurry/sdk/cs;->e:Ljava/lang/String;

    .line 1488
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    sget-object v0, Lcom/flurry/sdk/mj$a;->h:Lcom/flurry/sdk/mj$a;

    iget-object v0, v0, Lcom/flurry/sdk/mj$a;->q:Ljava/lang/String;

    .line 3134
    iget-object v2, p0, Lcom/flurry/sdk/bk;->d:Ljava/lang/String;

    .line 1489
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4114
    iget-object v0, p0, Lcom/flurry/sdk/bk;->f:Lcom/flurry/sdk/ay;

    .line 4144
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    iget-object v0, v0, Lcom/flurry/sdk/cs;->z:Lcom/flurry/sdk/dd;

    .line 4114
    iget-object v2, v0, Lcom/flurry/sdk/dd;->e:Ljava/lang/String;

    .line 1495
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    :goto_0
    const-string v2, "displayType"

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1502
    const-string v3, "layoutType"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1504
    invoke-static {v2}, Lcom/flurry/sdk/mh;->a(Ljava/lang/String;)I

    move-result v2

    .line 1505
    invoke-static {}, Lcom/flurry/sdk/mh;->a()I

    move-result v3

    .line 1507
    sget-object v4, Lcom/flurry/sdk/mj$a;->n:Lcom/flurry/sdk/mj$a;

    iget-object v4, v4, Lcom/flurry/sdk/mj$a;->q:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    sget-object v2, Lcom/flurry/sdk/mj$a;->o:Lcom/flurry/sdk/mj$a;

    iget-object v2, v2, Lcom/flurry/sdk/mj$a;->q:Ljava/lang/String;

    const-string v4, "inventorySourceId"

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    sget-object v2, Lcom/flurry/sdk/mj$a;->m:Lcom/flurry/sdk/mj$a;

    iget-object v2, v2, Lcom/flurry/sdk/mj$a;->q:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    sget-object v2, Lcom/flurry/sdk/mj$a;->g:Lcom/flurry/sdk/mj$a;

    iget-object v2, v2, Lcom/flurry/sdk/mj$a;->q:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    sget-object v0, Lcom/flurry/sdk/mj$a;->p:Lcom/flurry/sdk/mj$a;

    iget-object v2, v0, Lcom/flurry/sdk/mj$a;->q:Ljava/lang/String;

    .line 4518
    const-string v0, "videoUrl"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;)Lcom/flurry/sdk/mi;

    move-result-object v0

    .line 4519
    if-eqz v0, :cond_2

    .line 4520
    sget v0, Lcom/flurry/sdk/mh;->j:I

    .line 1511
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/bk;->g:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 6078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 6356
    iput-object v1, v0, Lcom/flurry/sdk/ay;->j:Ljava/util/HashMap;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/bk;->g:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/flurry/sdk/bk;->j:Landroid/media/AudioManager;

    .line 100
    return-void

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/sdk/bk;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error parsing JSON: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1498
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto/16 :goto_0

    .line 4523
    :cond_2
    const-string v0, "secHqImage"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;)Lcom/flurry/sdk/mi;

    move-result-object v0

    .line 4524
    if-eqz v0, :cond_3

    .line 4525
    sget v0, Lcom/flurry/sdk/mh;->h:I

    goto :goto_1

    .line 4528
    :cond_3
    sget v0, Lcom/flurry/sdk/mh;->i:I

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Lcom/flurry/sdk/mi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 221
    :goto_0
    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/bk;->f:Lcom/flurry/sdk/ay;

    invoke-virtual {v0}, Lcom/flurry/sdk/ay;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/de;

    .line 215
    iget-object v3, v0, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    new-instance v1, Lcom/flurry/sdk/mi;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/mi;-><init>(Lcom/flurry/sdk/de;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 221
    goto :goto_0
.end method

.method private declared-synchronized a()V
    .locals 6

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/bk;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 421
    :cond_1
    const/4 v0, 0x4

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/bk;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Impression logged"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/bk;->f:Lcom/flurry/sdk/ay;

    .line 7054
    iget v3, v3, Lcom/flurry/sdk/ay;->a:I

    .line 421
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v0, Lcom/flurry/sdk/bc;->T:Lcom/flurry/sdk/bc;

    iget-object v1, p0, Lcom/flurry/sdk/bk;->h:Ljava/util/Map;

    .line 7406
    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/sdk/bk;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sending EventType:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for AdUnitId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/bk;->f:Lcom/flurry/sdk/ay;

    .line 8054
    iget v5, v5, Lcom/flurry/sdk/ay;->a:I

    .line 7406
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for AdUnitSection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/bk;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 7408
    if-nez v1, :cond_2

    .line 7409
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7412
    :cond_2
    iget-object v2, p0, Lcom/flurry/sdk/bk;->g:Lcom/flurry/sdk/r;

    invoke-interface {v2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/bk;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/flurry/sdk/bk;->f:Lcom/flurry/sdk/ay;

    .line 9054
    iget v4, v4, Lcom/flurry/sdk/ay;->a:I

    .line 7412
    invoke-virtual {v2, v3, v4}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;I)V

    .line 7413
    iget-object v2, p0, Lcom/flurry/sdk/bk;->g:Lcom/flurry/sdk/r;

    invoke-interface {v2}, Lcom/flurry/sdk/r;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/bk;->g:Lcom/flurry/sdk/r;

    iget-object v4, p0, Lcom/flurry/sdk/bk;->g:Lcom/flurry/sdk/r;

    invoke-interface {v4}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 423
    iget-object v0, p0, Lcom/flurry/sdk/bk;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 427
    iget-object v1, p0, Lcom/flurry/sdk/bk;->g:Lcom/flurry/sdk/r;

    invoke-interface {v1}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    .line 10078
    iget-object v1, v1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 10360
    iget-object v1, v1, Lcom/flurry/sdk/ay;->j:Ljava/util/HashMap;

    .line 427
    if-eqz v1, :cond_3

    .line 428
    iget-object v1, p0, Lcom/flurry/sdk/bk;->g:Lcom/flurry/sdk/r;

    invoke-interface {v1}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    .line 12078
    iget-object v1, v1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 12360
    iget-object v1, v1, Lcom/flurry/sdk/ay;->j:Ljava/util/HashMap;

    .line 428
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 429
    sget-object v1, Lcom/flurry/sdk/mj$a;->l:Lcom/flurry/sdk/mj$a;

    iget-object v1, v1, Lcom/flurry/sdk/mj$a;->q:Ljava/lang/String;

    .line 13139
    iget-object v2, p0, Lcom/flurry/sdk/bk;->e:Ljava/lang/String;

    .line 429
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/mh;->b()Lcom/flurry/sdk/mh;

    move-result-object v0

    .line 14070
    iget-object v0, v0, Lcom/flurry/sdk/mh;->a:Lcom/flurry/sdk/mj;

    .line 432
    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Lcom/flurry/sdk/mh;->b()Lcom/flurry/sdk/mh;

    move-result-object v0

    .line 15070
    iget-object v0, v0, Lcom/flurry/sdk/mh;->a:Lcom/flurry/sdk/mj;

    .line 433
    sget v0, Lcom/flurry/sdk/mh;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/bk;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 50
    .line 15447
    iget-object v0, p0, Lcom/flurry/sdk/bk;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 15449
    if-eqz v0, :cond_0

    .line 15456
    iget-object v1, p0, Lcom/flurry/sdk/bk;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15457
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 15458
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15459
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v1, v2

    int-to-long v2, v1

    .line 15461
    :goto_0
    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 15463
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 15464
    long-to-float v2, v2

    const-wide/16 v4, 0x32

    mul-long/2addr v0, v4

    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    .line 15466
    iget v0, p0, Lcom/flurry/sdk/bk;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/bk;->l:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 15467
    invoke-direct {p0}, Lcom/flurry/sdk/bk;->a()V

    .line 16442
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/bk;->n:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->b(Lcom/flurry/sdk/kh;)V

    .line 15473
    :cond_0
    :goto_1
    return-void

    .line 15471
    :cond_1
    iput v6, p0, Lcom/flurry/sdk/bk;->l:I

    goto :goto_1

    .line 15474
    :cond_2
    iput v6, p0, Lcom/flurry/sdk/bk;->l:I

    goto :goto_1

    :cond_3
    move-wide v2, v4

    goto :goto_0
.end method
