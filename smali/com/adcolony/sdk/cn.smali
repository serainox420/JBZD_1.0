.class Lcom/adcolony/sdk/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Lcom/adcolony/sdk/by;

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adcolony/sdk/cm;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/adcolony/sdk/cm;

.field private final g:Ljava/lang/Object;

.field private h:Lcom/adcolony/sdk/bu;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/adcolony/sdk/cn;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/adcolony/sdk/cn;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    new-instance v0, Lcom/adcolony/sdk/by;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/by;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adcolony/sdk/cn;->c:Lcom/adcolony/sdk/by;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/cn;->d:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/cn;->e:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/adcolony/sdk/bu;

    invoke-direct {v0}, Lcom/adcolony/sdk/bu;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/cn;->h:Lcom/adcolony/sdk/bu;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/cn;Lcom/adcolony/sdk/cm;)Lcom/adcolony/sdk/cm;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    return-object p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/cn;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/cn;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/adcolony/sdk/cn;->e:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/cn;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/adcolony/sdk/cn;)Lcom/adcolony/sdk/cm;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    return-object v0
.end method

.method static synthetic d(Lcom/adcolony/sdk/cn;)Lcom/adcolony/sdk/by;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->c:Lcom/adcolony/sdk/by;

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method

.method private p()I
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 88
    :cond_0
    return v0
.end method

.method private q()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 145
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v1, "displayCurrentToast, overlayIsOpen finish"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->d()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    if-nez v0, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->c()V

    goto :goto_0

    .line 154
    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    invoke-virtual {v1}, Lcom/adcolony/sdk/cm;->r()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 156
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v1, "displayCurrentToast() dismissToast bc NDT_NOT_SHOWN"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    sget-object v0, Lcom/adcolony/sdk/cm$a;->a:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    goto :goto_0

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->r()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adcolony/sdk/cn;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v1, "displayCurrentToast() showToastModal bc NDT_MODAL"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/cn;->a(Z)V

    goto :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->r()I

    move-result v0

    if-ne v3, v0, :cond_5

    iget-object v0, p0, Lcom/adcolony/sdk/cn;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v1, "displayCurrentToast() showToastNonModal bc NDT_TOAST"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/cn;->a(Z)V

    goto :goto_0

    .line 166
    :cond_5
    const-string v0, "IN-APP-MSG-QUEUE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayCurrentToast() else. Trying to go to next toast. This one was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    if-eqz v0, :cond_6

    .line 169
    sget-object v0, Lcom/adcolony/sdk/cm$a;->a:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    goto/16 :goto_0

    .line 171
    :cond_6
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->c()V

    goto/16 :goto_0
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    return-object v0
.end method

.method a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 390
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    iget-object v0, v0, Lcom/adcolony/sdk/cm;->j:Lcom/adcolony/sdk/cm$d;

    invoke-interface {v0}, Lcom/adcolony/sdk/cm$d;->a()Landroid/webkit/WebView;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_0

    .line 394
    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->a(Landroid/webkit/WebView;ILjava/lang/String;)V

    .line 397
    :cond_0
    monitor-exit v1

    .line 398
    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 241
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pauseFromBackground()"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 243
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->e()V

    .line 247
    :cond_1
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    if-eqz v0, :cond_2

    .line 250
    check-cast p1, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->d()V

    .line 252
    :cond_2
    monitor-exit v1

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/adcolony/sdk/cm$a;)V
    .locals 6

    .prologue
    .line 325
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    :try_start_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->v()V

    .line 329
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dismissing toast after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    iget-wide v4, v3, Lcom/adcolony/sdk/cm;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms. Reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    iget-object v3, v3, Lcom/adcolony/sdk/cm;->a:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {v3}, Lcom/adcolony/sdk/cm$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 330
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    sget-object v2, Lcom/adcolony/sdk/cm$c;->e:Lcom/adcolony/sdk/cm$c;

    iput-object v2, v0, Lcom/adcolony/sdk/cm;->b:Lcom/adcolony/sdk/cm$c;

    .line 331
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    iput-object p1, v0, Lcom/adcolony/sdk/cm;->a:Lcom/adcolony/sdk/cm$a;

    .line 332
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    iget-object v0, v0, Lcom/adcolony/sdk/cm;->j:Lcom/adcolony/sdk/cm$d;

    new-instance v2, Lcom/adcolony/sdk/cn$2;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/cn$2;-><init>(Lcom/adcolony/sdk/cn;)V

    invoke-interface {v0, v2}, Lcom/adcolony/sdk/cm$d;->a(Lcom/adcolony/sdk/bk;)V

    .line 353
    :cond_0
    monitor-exit v1

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/adcolony/sdk/cm;)V
    .locals 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    const-string v2, "dismiss_toast"

    invoke-virtual {p1}, Lcom/adcolony/sdk/cm;->s()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    :cond_0
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 269
    iget-object v2, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 270
    if-nez p1, :cond_0

    .line 271
    :try_start_0
    monitor-exit v2

    .line 292
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing toast with sourceId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    const/4 v0, 0x0

    move v1, v0

    .line 276
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/cm;

    .line 278
    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :goto_2
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 276
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 286
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find toast (sourceId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") in queue during removal"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 288
    :catch_0
    move-exception v0

    .line 289
    :try_start_4
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught exception when calling removeToastWithSourceId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/adcolony/sdk/cm;)V
    .locals 7

    .prologue
    .line 313
    iget-object v6, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v6

    .line 314
    if-eqz p3, :cond_0

    .line 315
    :try_start_0
    invoke-virtual {p3}, Lcom/adcolony/sdk/cm;->w()V

    .line 317
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p3}, Lcom/adcolony/sdk/cm;->r()I

    move-result v4

    invoke-virtual {p3}, Lcom/adcolony/sdk/cm;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/cp;->a(Ljava/lang/String;ZZILjava/lang/String;)V

    .line 321
    :cond_1
    monitor-exit v6

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->h:Lcom/adcolony/sdk/bu;

    new-instance v2, Lcom/adcolony/sdk/cn$1;

    invoke-direct {v2, p0, p1}, Lcom/adcolony/sdk/cn$1;-><init>(Lcom/adcolony/sdk/cn;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Z)V
    .locals 3

    .prologue
    .line 213
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    if-eqz v0, :cond_1

    .line 215
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->a(Z)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 223
    const-string v2, "isModalRequest"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 225
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method b()V
    .locals 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/cn;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->p()I

    move-result v0

    if-lez v0, :cond_1

    .line 94
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->w()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    :cond_0
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v2, "processNextToast() aborting !appvisible || !ServiceAvailable"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->d()V

    .line 102
    :cond_1
    :goto_0
    monitor-exit v1

    .line 103
    return-void

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->c()V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Lcom/adcolony/sdk/cm;)V
    .locals 3

    .prologue
    .line 401
    if-eqz p1, :cond_0

    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 403
    iget-object v1, p1, Lcom/adcolony/sdk/cm;->b:Lcom/adcolony/sdk/cm$c;

    sget-object v2, Lcom/adcolony/sdk/cm$c;->b:Lcom/adcolony/sdk/cm$c;

    if-ne v1, v2, :cond_1

    .line 404
    const-string v1, "state"

    const-string v2, "queued"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :goto_0
    const-string v1, "queueSize"

    iget-object v2, p0, Lcom/adcolony/sdk/cn;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v1, "messageId"

    invoke-virtual {p1}, Lcom/adcolony/sdk/cm;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v1, "displayType"

    invoke-virtual {p1}, Lcom/adcolony/sdk/cm;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "in_app_msg"

    invoke-virtual {v1, v2, v0}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 413
    :cond_0
    return-void

    .line 406
    :cond_1
    const-string v1, "state"

    const-string v2, "showing"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method c()V
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->q()V

    .line 128
    :goto_0
    monitor-exit v1

    .line 129
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v2, "processNextToast() !toastShowing"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 113
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->p()I

    move-result v0

    .line 114
    if-lez v0, :cond_2

    .line 115
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v2, "processNextToast() _toastQueue.get()"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->d()V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/cm;

    iput-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    .line 120
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->q()V

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 122
    :cond_2
    :try_start_1
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v2, "processNextToast() _toastQueue.size() <= 0 && _processingIndex >= _toastQueue.size(). Calling finishShowingToasts()"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->d()V

    goto :goto_0

    .line 126
    :cond_3
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v2, "processNextToast() toastIsShowing. do nothing."

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/cn;->d:Z

    .line 133
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    sget-object v1, Lcom/adcolony/sdk/cm$c;->d:Lcom/adcolony/sdk/cm$c;

    iput-object v1, v0, Lcom/adcolony/sdk/cm;->b:Lcom/adcolony/sdk/cm$c;

    .line 138
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    if-eqz v0, :cond_1

    .line 140
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->d()V

    .line 142
    :cond_1
    return-void
.end method

.method e()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 178
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pauseToast()"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 182
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pauseToast() currentTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    iget-wide v2, v0, Lcom/adcolony/sdk/cm;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    iget-object v0, v0, Lcom/adcolony/sdk/cm;->b:Lcom/adcolony/sdk/cm$c;

    sget-object v2, Lcom/adcolony/sdk/cm$c;->d:Lcom/adcolony/sdk/cm$c;

    if-eq v0, v2, :cond_0

    .line 187
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    sget-object v2, Lcom/adcolony/sdk/cm$c;->d:Lcom/adcolony/sdk/cm$c;

    iput-object v2, v0, Lcom/adcolony/sdk/cm;->b:Lcom/adcolony/sdk/cm$c;

    .line 188
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->v()V

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseToast() toastVisibleTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    iget-wide v4, v3, Lcom/adcolony/sdk/cm;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->r()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseToast() duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    invoke-virtual {v3}, Lcom/adcolony/sdk/cm;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/cn;->a(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    if-eqz v0, :cond_1

    .line 199
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    check-cast v0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->b()V

    .line 203
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 204
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    if-eqz v0, :cond_2

    .line 205
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    check-cast v0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->c()V

    .line 209
    :cond_2
    monitor-exit v1

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method f()V
    .locals 4

    .prologue
    .line 231
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "enterBackground()"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 234
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    sget-object v0, Lcom/adcolony/sdk/cm$a;->k:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    .line 237
    :cond_0
    monitor-exit v1

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method g()V
    .locals 4

    .prologue
    .line 256
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "resumeFromBackground()"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 258
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v2, "resumeFromBackground, isPaused"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 260
    invoke-direct {p0}, Lcom/adcolony/sdk/cn;->q()V

    .line 265
    :goto_0
    monitor-exit v1

    .line 266
    return-void

    .line 262
    :cond_0
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v2, "resumeFromBackground, !isPaused showToasts()"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    invoke-virtual {p0}, Lcom/adcolony/sdk/cn;->b()V

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method h()V
    .locals 2

    .prologue
    .line 295
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->w()V

    .line 299
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/cm$a;->i:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    .line 300
    monitor-exit v1

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method i()V
    .locals 5

    .prologue
    .line 304
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->w()V

    .line 308
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/adcolony/sdk/cp;->a(Ljava/lang/String;ZZ)V

    .line 309
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method j()Z
    .locals 2

    .prologue
    .line 358
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method k()Z
    .locals 3

    .prologue
    .line 364
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    iget-object v0, v0, Lcom/adcolony/sdk/cm;->b:Lcom/adcolony/sdk/cm$c;

    sget-object v2, Lcom/adcolony/sdk/cm$c;->d:Lcom/adcolony/sdk/cm$c;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method l()Z
    .locals 2

    .prologue
    .line 370
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->r()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method m()Lcom/adcolony/sdk/cm;
    .locals 2

    .prologue
    .line 376
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    monitor-exit v1

    return-object v0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method n()V
    .locals 2

    .prologue
    .line 382
    iget-object v1, p0, Lcom/adcolony/sdk/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/adcolony/sdk/cn;->f:Lcom/adcolony/sdk/cm;

    iget-object v0, v0, Lcom/adcolony/sdk/cm;->j:Lcom/adcolony/sdk/cm$d;

    invoke-interface {v0}, Lcom/adcolony/sdk/cm$d;->c()V

    .line 386
    :cond_0
    monitor-exit v1

    .line 387
    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
