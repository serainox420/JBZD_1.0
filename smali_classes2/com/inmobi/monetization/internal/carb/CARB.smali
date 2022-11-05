.class public Lcom/inmobi/monetization/internal/carb/CARB;
.super Ljava/lang/Object;
.source "CARB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/monetization/internal/carb/CARB$CarbCallback;
    }
.end annotation


# static fields
.field public static final LOGGING_TAG:Ljava/lang/String; = "[InMobi]-[CARB]-4.5.5"

.field private static g:Lcom/inmobi/monetization/internal/carb/CARB;

.field private static j:Landroid/content/SharedPreferences;

.field private static k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static l:Ljava/lang/Thread;

.field private static m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static n:Ljava/lang/Thread;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;


# instance fields
.field a:[B

.field b:[B

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/inmobi/monetization/internal/carb/CARB$CarbCallback;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final r:I

.field private final s:I

.field private t:[B

.field private u:[B

.field private v:[B

.field private w:[B

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inmobi/monetization/internal/carb/CarbInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    new-instance v0, Lcom/inmobi/monetization/internal/carb/CARB;

    invoke-direct {v0}, Lcom/inmobi/monetization/internal/carb/CARB;-><init>()V

    sput-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->g:Lcom/inmobi/monetization/internal/carb/CARB;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->o:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->p:Ljava/lang/String;

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->q:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "carb_last_req_time"

    iput-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->h:Ljava/lang/String;

    .line 51
    const-string v0, "carbpreference"

    iput-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->i:Ljava/lang/String;

    .line 64
    const/16 v0, 0x8

    iput v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->r:I

    .line 65
    const/16 v0, 0x10

    iput v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->s:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->c:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->d:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->e:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->f:Lcom/inmobi/monetization/internal/carb/CARB$CarbCallback;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->x:Ljava/util/ArrayList;

    .line 88
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CarbInitializer;->initialize()V

    .line 89
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/internal/carb/CARB;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->j:Landroid/content/SharedPreferences;

    .line 92
    return-void
.end method

.method static synthetic a()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->j:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/carb/CARB;Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p6}, Lcom/inmobi/monetization/internal/carb/CARB;->a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 471
    invoke-static/range {p1 .. p6}, Lcom/inmobi/commons/internal/EncryptionUtils;->SeMeGe(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    const-string v2, "sm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v0, "&sn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    const-string v1, "[InMobi]-[CARB]-4.5.5"

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/carb/CARB;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/carb/CARB;->c()V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/carb/CARB;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/monetization/internal/carb/CARB;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inmobi/monetization/internal/carb/CarbInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 511
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/monetization/internal/carb/CARB$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/inmobi/monetization/internal/carb/CARB$2;-><init>(Lcom/inmobi/monetization/internal/carb/CARB;Ljava/util/ArrayList;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->n:Ljava/lang/Thread;

    .line 690
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    :cond_0
    monitor-exit p0

    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/carb/CARB;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/inmobi/monetization/internal/carb/CARB;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 761
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 764
    const/16 v1, 0x100

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    const/4 v0, 0x1

    .line 769
    :goto_0
    return v0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/carb/CARB;[B)[B
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/inmobi/monetization/internal/carb/CARB;->t:[B

    return-object p1
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/monetization/internal/carb/CARB$1;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/internal/carb/CARB$1;-><init>(Lcom/inmobi/monetization/internal/carb/CARB;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->l:Ljava/lang/Thread;

    .line 464
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :cond_0
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/inmobi/monetization/internal/carb/CARB;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/carb/CARB;->e()V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/monetization/internal/carb/CARB;[B)[B
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/inmobi/monetization/internal/carb/CARB;->v:[B

    return-object p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 487
    const/16 v0, 0x8

    :try_start_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->a:[B

    .line 488
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 489
    iget-object v1, p0, Lcom/inmobi/monetization/internal/carb/CARB;->a:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 491
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/inmobi/monetization/internal/carb/CARB;->u:[B

    .line 492
    iget-object v1, p0, Lcom/inmobi/monetization/internal/carb/CARB;->u:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 496
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/monetization/internal/carb/CARB;)[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->t:[B

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 696
    const/16 v0, 0x8

    :try_start_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->b:[B

    .line 697
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 698
    iget-object v1, p0, Lcom/inmobi/monetization/internal/carb/CARB;->b:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 700
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/inmobi/monetization/internal/carb/CARB;->w:[B

    .line 701
    iget-object v1, p0, Lcom/inmobi/monetization/internal/carb/CARB;->w:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 705
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/inmobi/monetization/internal/carb/CARB;)[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->u:[B

    return-object v0
.end method

.method static synthetic e(Lcom/inmobi/monetization/internal/carb/CARB;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->h:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 710
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 711
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 713
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 716
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 717
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 719
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/inmobi/monetization/internal/carb/CARB;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/carb/CARB;->f()V

    return-void
.end method

.method public static fillCarbInfo()V
    .locals 4

    .prologue
    .line 734
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 736
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 739
    if-eqz v2, :cond_0

    .line 740
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/inmobi/monetization/internal/carb/CARB;->setAppBId(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/monetization/internal/carb/CARB;->setAppDisplayName(Ljava/lang/String;)V

    .line 743
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 745
    const/4 v0, 0x0

    .line 746
    if-eqz v1, :cond_2

    .line 747
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 748
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 749
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 752
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 753
    invoke-static {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->setAppVer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :cond_3
    :goto_0
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 756
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Failed to fill CarbInfo"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/inmobi/monetization/internal/carb/CARB;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getAppBid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 799
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountryISO(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 803
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 805
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .line 809
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/inmobi/monetization/internal/carb/CARB;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->g:Lcom/inmobi/monetization/internal/carb/CARB;

    return-object v0
.end method

.method public static getURLDecoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 825
    const-string v0, ""

    .line 828
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 831
    :goto_0
    return-object v0

    .line 829
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    const-string v0, ""

    .line 724
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 728
    :goto_0
    return-object v0

    .line 725
    :catch_0
    move-exception v0

    .line 726
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic h(Lcom/inmobi/monetization/internal/carb/CARB;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/carb/CARB;->d()V

    return-void
.end method

.method static synthetic i(Lcom/inmobi/monetization/internal/carb/CARB;)[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->v:[B

    return-object v0
.end method

.method static synthetic j(Lcom/inmobi/monetization/internal/carb/CARB;)[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CARB;->w:[B

    return-object v0
.end method

.method public static setAppBId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 774
    sput-object p0, Lcom/inmobi/monetization/internal/carb/CARB;->o:Ljava/lang/String;

    .line 775
    return-void
.end method

.method public static setAppDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 794
    sput-object p0, Lcom/inmobi/monetization/internal/carb/CARB;->q:Ljava/lang/String;

    .line 795
    return-void
.end method

.method public static setAppVer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 784
    sput-object p0, Lcom/inmobi/monetization/internal/carb/CARB;->p:Ljava/lang/String;

    .line 785
    return-void
.end method


# virtual methods
.method public setCallBack(Lcom/inmobi/monetization/internal/carb/CARB$CarbCallback;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/inmobi/monetization/internal/carb/CARB;->f:Lcom/inmobi/monetization/internal/carb/CARB$CarbCallback;

    .line 817
    return-void
.end method

.method public declared-synchronized startCarb()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 101
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/monetization/internal/carb/CarbConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/carb/CarbConfigParams;->isCarbEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    const-string v0, "[InMobi]-[CARB]-4.5.5"

    const-string v1, "CARB feature disabled."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->j:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/carb/CARB;->h:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 114
    cmp-long v2, v6, v0

    if-nez v2, :cond_3

    .line 116
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const-string v0, "[InMobi]-[CARB]-4.5.5"

    const-string v1, "First CARB request is in progress"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :cond_2
    :try_start_2
    const-string v0, "[InMobi]-[CARB]-4.5.5"

    const-string v1, "Requesting CARB first time"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/carb/CARB;->b()V

    goto :goto_0

    .line 125
    :cond_3
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/monetization/internal/carb/CarbConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/monetization/internal/carb/CarbConfigParams;->getRetreiveFrequncy()J

    move-result-wide v2

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 128
    add-long/2addr v0, v2

    sub-long/2addr v0, v4

    .line 130
    cmp-long v0, v0, v6

    if-gtz v0, :cond_5

    .line 132
    sget-object v0, Lcom/inmobi/monetization/internal/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    const-string v0, "[InMobi]-[CARB]-4.5.5"

    const-string v1, "CARB request is in progress"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_4
    const-string v0, "[InMobi]-[CARB]-4.5.5"

    const-string v1, "CARB request interval reached. Requesting again"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/carb/CARB;->b()V

    goto :goto_0

    .line 141
    :cond_5
    const-string v0, "[InMobi]-[CARB]-4.5.5"

    const-string v1, "CARB request interval not reached. NO request"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
