.class public Lio/realm/p$a;
.super Ljava/lang/Object;
.source "RealmConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[B

.field private e:J

.field private f:Lio/realm/s;

.field private g:Z

.field private h:Lio/realm/internal/SharedRealm$Durability;

.field private i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Lio/realm/a/b;

.field private l:Lio/realm/l$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lio/realm/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/realm/p$a;-><init>(Landroid/content/Context;)V

    .line 395
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/p$a;->i:Ljava/util/HashSet;

    .line 382
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/p$a;->j:Ljava/util/HashSet;

    .line 398
    if-nez p1, :cond_0

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call `Realm.init(Context)` before creating a RealmConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    invoke-static {p1}, Lio/realm/internal/k;->a(Landroid/content/Context;)V

    .line 402
    invoke-direct {p0, p1}, Lio/realm/p$a;->a(Landroid/content/Context;)V

    .line 403
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/realm/p$a;->a:Ljava/io/File;

    .line 408
    const-string v0, "default.realm"

    iput-object v0, p0, Lio/realm/p$a;->b:Ljava/lang/String;

    .line 409
    iput-object v2, p0, Lio/realm/p$a;->d:[B

    .line 410
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/realm/p$a;->e:J

    .line 411
    iput-object v2, p0, Lio/realm/p$a;->f:Lio/realm/s;

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/p$a;->g:Z

    .line 413
    sget-object v0, Lio/realm/internal/SharedRealm$Durability;->FULL:Lio/realm/internal/SharedRealm$Durability;

    iput-object v0, p0, Lio/realm/p$a;->h:Lio/realm/internal/SharedRealm$Durability;

    .line 414
    invoke-static {}, Lio/realm/p;->p()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lio/realm/p$a;->i:Ljava/util/HashSet;

    invoke-static {}, Lio/realm/p;->p()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lio/realm/p$a;
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lio/realm/p$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/p$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm cannot clear its schema when previously configured to use an asset file by calling assetFile()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/p$a;->g:Z

    .line 519
    return-object p0
.end method

.method public b()Lio/realm/p;
    .locals 14

    .prologue
    .line 652
    iget-object v0, p0, Lio/realm/p$a;->k:Lio/realm/a/b;

    if-nez v0, :cond_0

    invoke-static {}, Lio/realm/p;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    new-instance v0, Lio/realm/a/a;

    invoke-direct {v0}, Lio/realm/a/a;-><init>()V

    iput-object v0, p0, Lio/realm/p$a;->k:Lio/realm/a/b;

    .line 656
    :cond_0
    new-instance v0, Lio/realm/p;

    iget-object v1, p0, Lio/realm/p$a;->a:Ljava/io/File;

    iget-object v2, p0, Lio/realm/p$a;->b:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lio/realm/p$a;->a:Ljava/io/File;

    iget-object v5, p0, Lio/realm/p$a;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 658
    invoke-static {v3}, Lio/realm/p;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/realm/p$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lio/realm/p$a;->d:[B

    iget-wide v6, p0, Lio/realm/p$a;->e:J

    iget-object v8, p0, Lio/realm/p$a;->f:Lio/realm/s;

    iget-boolean v9, p0, Lio/realm/p$a;->g:Z

    iget-object v10, p0, Lio/realm/p$a;->h:Lio/realm/internal/SharedRealm$Durability;

    iget-object v11, p0, Lio/realm/p$a;->i:Ljava/util/HashSet;

    iget-object v12, p0, Lio/realm/p$a;->j:Ljava/util/HashSet;

    .line 665
    invoke-static {v11, v12}, Lio/realm/p;->a(Ljava/util/Set;Ljava/util/Set;)Lio/realm/internal/m;

    move-result-object v11

    iget-object v12, p0, Lio/realm/p$a;->k:Lio/realm/a/b;

    iget-object v13, p0, Lio/realm/p$a;->l:Lio/realm/l$a;

    invoke-direct/range {v0 .. v13}, Lio/realm/p;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/s;ZLio/realm/internal/SharedRealm$Durability;Lio/realm/internal/m;Lio/realm/a/b;Lio/realm/l$a;)V

    .line 656
    return-object v0
.end method
