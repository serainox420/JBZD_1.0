.class Lcom/adcolony/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ADCDownload$Listener;


# static fields
.field static final a:Ljava/lang/String; = "026ae9c9824b3e483fa6c71fa88f57ae27816141"

.field static final b:Ljava/lang/String; = "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"


# instance fields
.field A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/aw;",
            ">;"
        }
    .end annotation
.end field

.field B:Ljava/lang/String;

.field C:I

.field D:Z

.field E:Z

.field F:Z

.field G:Z

.field H:Z

.field private I:Lorg/json/JSONObject;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:I

.field private T:I

.field private final U:I

.field private V:Landroid/app/Application$ActivityLifecycleCallbacks;

.field c:Lcom/adcolony/sdk/i;

.field d:Lcom/adcolony/sdk/ab;

.field e:Lcom/adcolony/sdk/l;

.field f:Lcom/adcolony/sdk/aj;

.field g:Lcom/adcolony/sdk/d;

.field h:Lcom/adcolony/sdk/k;

.field i:Lcom/adcolony/sdk/n;

.field j:Lcom/adcolony/sdk/w;

.field k:Lcom/adcolony/sdk/am;

.field l:Lcom/adcolony/sdk/ao;

.field m:Lcom/adcolony/sdk/j;

.field n:Lcom/adcolony/sdk/aq;

.field o:Lcom/adcolony/sdk/ap;

.field p:Lcom/adcolony/sdk/ae;

.field q:Lcom/adcolony/sdk/c;

.field r:Lcom/adcolony/sdk/ax;

.field s:Lcom/adcolony/sdk/AdColonyInterstitial;

.field t:Lcom/adcolony/sdk/AdColonyRewardListener;

.field u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyCustomMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field v:Lcom/adcolony/sdk/AdColonyAppOptions;

.field w:Lcom/adcolony/sdk/z;

.field x:Z

.field y:Lcom/adcolony/sdk/z;

.field z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->u:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->A:Ljava/util/HashMap;

    .line 73
    const-string v0, "https://adc3-launch.adcolony.com/v4/launch"

    iput-object v0, p0, Lcom/adcolony/sdk/h;->J:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/adcolony/sdk/h;->C:I

    .line 93
    iput v1, p0, Lcom/adcolony/sdk/h;->T:I

    .line 94
    const/16 v0, 0x78

    iput v0, p0, Lcom/adcolony/sdk/h;->U:I

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/h;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/adcolony/sdk/h;->R:Z

    return v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/h;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/adcolony/sdk/h;->R:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 902
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/adc3/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    invoke-static {p1, v0}, Lcom/adcolony/sdk/au;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    .line 907
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/adcolony/sdk/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adcolony/sdk/h;->J:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/adcolony/sdk/h;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/adcolony/sdk/h;->d()V

    return-void
.end method

.method static synthetic d(Lcom/adcolony/sdk/h;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/adcolony/sdk/h;->T:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 568
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adcolony/sdk/h$6;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/h$6;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 583
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 584
    return-void
.end method


# virtual methods
.method a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    return-object v0
.end method

.method a(Lcom/adcolony/sdk/AdColonyAppOptions;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 977
    iget-object v0, p0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v1, v0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 979
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 980
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 983
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->h:Z

    .line 984
    iget-object v3, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    invoke-virtual {v3, v0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    goto :goto_0

    .line 987
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 986
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 987
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 990
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/h;->G:Z

    .line 993
    invoke-virtual {p0, v4}, Lcom/adcolony/sdk/h;->a(I)Z

    .line 994
    iget-object v0, p0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 995
    iput-object p1, p0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 996
    iget-object v0, p0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ab;->a()V

    .line 997
    invoke-virtual {p0, v4, v4}, Lcom/adcolony/sdk/h;->a(ZZ)Z

    .line 998
    return-void
.end method

.method a(Lcom/adcolony/sdk/AdColonyAppOptions;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    iput-boolean p2, p0, Lcom/adcolony/sdk/h;->F:Z

    .line 122
    iput-object p1, p0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 124
    new-instance v0, Lcom/adcolony/sdk/ab;

    invoke-direct {v0}, Lcom/adcolony/sdk/ab;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    .line 126
    new-instance v0, Lcom/adcolony/sdk/i;

    invoke-direct {v0}, Lcom/adcolony/sdk/i;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->c:Lcom/adcolony/sdk/i;

    .line 128
    new-instance v0, Lcom/adcolony/sdk/l;

    invoke-direct {v0}, Lcom/adcolony/sdk/l;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->e:Lcom/adcolony/sdk/l;

    .line 129
    iget-object v0, p0, Lcom/adcolony/sdk/h;->e:Lcom/adcolony/sdk/l;

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->a()V

    .line 131
    new-instance v0, Lcom/adcolony/sdk/aj;

    invoke-direct {v0}, Lcom/adcolony/sdk/aj;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    .line 132
    iget-object v0, p0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    invoke-virtual {v0}, Lcom/adcolony/sdk/aj;->a()V

    .line 134
    new-instance v0, Lcom/adcolony/sdk/d;

    invoke-direct {v0}, Lcom/adcolony/sdk/d;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    .line 135
    iget-object v0, p0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->a()V

    .line 137
    new-instance v0, Lcom/adcolony/sdk/k;

    invoke-direct {v0}, Lcom/adcolony/sdk/k;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/k;

    .line 139
    new-instance v0, Lcom/adcolony/sdk/n;

    invoke-direct {v0}, Lcom/adcolony/sdk/n;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/n;

    .line 140
    iget-object v0, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/n;

    invoke-virtual {v0}, Lcom/adcolony/sdk/n;->a()V

    .line 142
    new-instance v0, Lcom/adcolony/sdk/w;

    invoke-direct {v0}, Lcom/adcolony/sdk/w;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->j:Lcom/adcolony/sdk/w;

    .line 143
    iget-object v0, p0, Lcom/adcolony/sdk/h;->j:Lcom/adcolony/sdk/w;

    invoke-static {}, Lcom/adcolony/sdk/w;->a()V

    .line 145
    new-instance v0, Lcom/adcolony/sdk/am;

    invoke-direct {v0}, Lcom/adcolony/sdk/am;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    .line 146
    iget-object v0, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    invoke-virtual {v0}, Lcom/adcolony/sdk/am;->a()Z

    .line 148
    new-instance v0, Lcom/adcolony/sdk/ao;

    invoke-direct {v0}, Lcom/adcolony/sdk/ao;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->l:Lcom/adcolony/sdk/ao;

    .line 149
    iget-object v0, p0, Lcom/adcolony/sdk/h;->l:Lcom/adcolony/sdk/ao;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ao;->a()V

    .line 151
    new-instance v0, Lcom/adcolony/sdk/j;

    invoke-direct {v0}, Lcom/adcolony/sdk/j;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    .line 152
    iget-object v0, p0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->d()V

    .line 154
    new-instance v0, Lcom/adcolony/sdk/ae;

    invoke-direct {v0}, Lcom/adcolony/sdk/ae;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->p:Lcom/adcolony/sdk/ae;

    .line 155
    iget-object v0, p0, Lcom/adcolony/sdk/h;->p:Lcom/adcolony/sdk/ae;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ae;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/h;->B:Ljava/lang/String;

    .line 158
    if-nez p2, :cond_1

    .line 160
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v4, v4, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/h;->O:Z

    .line 161
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v4, v4, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/h;->P:Z

    .line 163
    iget-boolean v0, p0, Lcom/adcolony/sdk/h;->O:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/adcolony/sdk/h;->P:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v3, v3, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/adcolony/sdk/s;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "sdk_version"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    const-string v3, "3.0.7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/adcolony/sdk/h;->N:Z

    .line 166
    iget-boolean v0, p0, Lcom/adcolony/sdk/h;->N:Z

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/h;->a(Z)Z

    .line 170
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/h;->V:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/adcolony/sdk/h$1;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/h$1;-><init>(Lcom/adcolony/sdk/h;)V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->V:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 278
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v3, p0, Lcom/adcolony/sdk/h;->V:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 282
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v4, v4, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v3, v3, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/s;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/h;->I:Lorg/json/JSONObject;

    .line 286
    iget-object v0, p0, Lcom/adcolony/sdk/h;->I:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/h;->b(Lorg/json/JSONObject;)V

    .line 291
    :cond_1
    iget v0, p0, Lcom/adcolony/sdk/h;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adcolony/sdk/h;->C:I

    .line 294
    const-string v0, "Module.load"

    new-instance v3, Lcom/adcolony/sdk/h$12;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/h$12;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 303
    const-string v0, "Module.unload"

    new-instance v3, Lcom/adcolony/sdk/h$13;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/h$13;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 312
    const-string v0, "AdColony.on_configured"

    new-instance v3, Lcom/adcolony/sdk/h$14;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/h$14;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 336
    const-string v0, "AdColony.get_app_info"

    new-instance v3, Lcom/adcolony/sdk/h$15;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/h$15;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 345
    const-string v0, "AdColony.v4vc_reward"

    new-instance v3, Lcom/adcolony/sdk/h$16;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/h$16;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 354
    const-string v0, "AdColony.zone_info"

    new-instance v3, Lcom/adcolony/sdk/h$17;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/h$17;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 363
    const-string v0, "AdColony.probe_launch_server"

    new-instance v3, Lcom/adcolony/sdk/h$18;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/h$18;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 372
    const-string v0, "Crypto.sha1"

    new-instance v3, Lcom/adcolony/sdk/h$19;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/h$19;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 383
    const-string v0, "Crypto.crc32"

    new-instance v3, Lcom/adcolony/sdk/h$2;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/h$2;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 394
    const-string v0, "Crypto.uuid"

    new-instance v3, Lcom/adcolony/sdk/h$3;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/h$3;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 406
    const-string v0, "Device.query_advertiser_info"

    new-instance v3, Lcom/adcolony/sdk/h$4;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/h$4;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 425
    const-string v0, "AdColony.controller_version"

    new-instance v3, Lcom/adcolony/sdk/h$5;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/h$5;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 442
    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v3, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 443
    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 444
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v5, v5, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AppVersion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 447
    if-eqz v0, :cond_2

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v4, v4, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "AppVersion"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/s;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_6

    .line 455
    const-string v4, "last_update"

    invoke-static {v0, v4}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 458
    :goto_1
    if-eq v0, v3, :cond_5

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/h;->R:Z

    .line 471
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 473
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 474
    const-string v1, "last_update"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v2, v2, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AppVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v2

    .line 165
    goto/16 :goto_0

    .line 479
    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method a(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/h;->a(I)Z

    .line 617
    return-void
.end method

.method a(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1007
    iget-object v0, p0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/ab;->a(I)Lcom/adcolony/sdk/ad;

    move-result-object v0

    .line 1008
    if-nez v0, :cond_0

    move v0, v1

    .line 1041
    :goto_0
    return v0

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/h;->A:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1015
    iget-object v0, p0, Lcom/adcolony/sdk/h;->A:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/aw;

    .line 1016
    iget-boolean v3, v0, Lcom/adcolony/sdk/aw;->b:Z

    if-eqz v3, :cond_1

    .line 1018
    const-string v3, "about:blank"

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/aw;->loadUrl(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/aw;->clearCache(Z)V

    .line 1020
    invoke-virtual {v0}, Lcom/adcolony/sdk/aw;->removeAllViews()V

    .line 1021
    iput-boolean v2, v0, Lcom/adcolony/sdk/aw;->c:Z

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/h;->A:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/h;->y:Lcom/adcolony/sdk/z;

    if-eqz v0, :cond_3

    .line 1035
    iget-object v0, p0, Lcom/adcolony/sdk/h;->y:Lcom/adcolony/sdk/z;

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 1036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/h;->y:Lcom/adcolony/sdk/z;

    .line 1037
    iput-boolean v1, p0, Lcom/adcolony/sdk/h;->x:Z

    .line 1040
    :cond_3
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "Destroying module with id = "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/u;->b(I)Lcom/adcolony/sdk/u;

    move v0, v2

    .line 1041
    goto :goto_0
.end method

.method a(Landroid/content/Context;Lcom/adcolony/sdk/z;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 919
    if-nez p1, :cond_1

    .line 967
    :cond_0
    :goto_0
    return v0

    .line 924
    :cond_1
    const/4 v2, 0x0

    .line 927
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 949
    :goto_1
    if-eqz v2, :cond_0

    .line 954
    iget-object v0, p0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/adcolony/sdk/j;->a:Ljava/lang/String;

    .line 955
    iget-object v0, p0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lcom/adcolony/sdk/j;->c:Z

    .line 956
    iget-object v0, p0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    iput-boolean v1, v0, Lcom/adcolony/sdk/j;->b:Z

    .line 958
    if-eqz p2, :cond_2

    .line 960
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 961
    const-string v2, "advertiser_id"

    iget-object v3, p0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v3}, Lcom/adcolony/sdk/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 962
    const-string v2, "limit_ad_tracking"

    iget-object v3, p0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v3}, Lcom/adcolony/sdk/j;->f()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 964
    invoke-virtual {p2, v0}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    :cond_2
    move v0, v1

    .line 967
    goto :goto_0

    .line 929
    :catch_0
    move-exception v1

    .line 931
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Google Play Services ads dependencies are missing. Collecting Android ID instead of Advertising ID."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 934
    :catch_1
    move-exception v3

    .line 936
    sget-object v3, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v4, "Google Play Services is out of date, please update to GPS 4.0+. Collecting Android ID instead of Advertising ID."

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_1

    .line 938
    :catch_2
    move-exception v1

    .line 940
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 941
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 945
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Advertising ID is not available. Collecting Android ID instead of Advertising ID."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0
.end method

.method a(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 594
    iget-boolean v1, p0, Lcom/adcolony/sdk/h;->N:Z

    if-nez v1, :cond_0

    .line 596
    sget-object v1, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    const-string v2, "Non-standard launch. Downloading new controller."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 606
    :goto_0
    return v0

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/h;->I:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adcolony/sdk/h;->I:Lorg/json/JSONObject;

    const-string v2, "controller"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sha1"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "controller"

    invoke-static {p1, v2}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "sha1"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    const/4 v0, 0x0

    goto :goto_0

    .line 605
    :cond_1
    sget-object v1, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    const-string v2, "Controller sha1 does not match, downloading new controller."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0
.end method

.method a(Z)Z
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adcolony/sdk/h;->a(ZZ)Z

    move-result v0

    return v0
.end method

.method a(ZZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/../"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adcolony/sdk/au;->e(Ljava/lang/String;)V

    .line 521
    sget-object v1, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/../"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 527
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    invoke-virtual {v3}, Lcom/adcolony/sdk/am;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/../lib/libImmEndpointWarpJ.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    iget-object v2, p0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, v2, Lcom/adcolony/sdk/j;->d:Z

    .line 531
    iput-boolean p2, p0, Lcom/adcolony/sdk/h;->Q:Z

    .line 534
    iput-boolean p1, p0, Lcom/adcolony/sdk/h;->N:Z

    .line 535
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 538
    sget-object v1, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v2, "Loading .so from libs"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 541
    :try_start_0
    const-string v1, "js"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 542
    const-string v1, "adcolony"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    iget-object v1, p0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    invoke-virtual {v1}, Lcom/adcolony/sdk/ab;->a()V

    .line 553
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->b()Z

    .line 561
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/h;->d()V

    .line 563
    :goto_0
    return v0

    .line 544
    :catch_0
    move-exception v1

    .line 547
    sget-object v1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v2, "Expecting libadcolony.so in libs directory but it was not found."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 548
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/h;->b(Z)V

    .line 549
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    .line 639
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v2, v2, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 640
    const-string v1, "zone_ids"

    iget-object v2, p0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v2, v2, Lcom/adcolony/sdk/AdColonyAppOptions;->c:Lorg/json/JSONArray;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 642
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 643
    const-string v2, "options"

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 645
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 646
    return-void
.end method

.method b(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1050
    sget-boolean v1, Lcom/adcolony/sdk/ADCVMModule;->d:Z

    if-nez v1, :cond_1

    .line 1052
    const-string v1, "logging"

    invoke-static {p1, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1053
    const-string v2, "send_level"

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/adcolony/sdk/w;->i:I

    .line 1054
    sget-boolean v2, Lcom/adcolony/sdk/w;->a:Z

    if-nez v2, :cond_0

    const-string v2, "log_private"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    sput-boolean v0, Lcom/adcolony/sdk/w;->a:Z

    .line 1055
    const-string v0, "print_level"

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/adcolony/sdk/w;->h:I

    .line 1057
    :cond_1
    return-void

    .line 1054
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 627
    iput-boolean p1, p0, Lcom/adcolony/sdk/h;->F:Z

    .line 628
    return-void
.end method

.method b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 492
    iget-boolean v1, p0, Lcom/adcolony/sdk/h;->F:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v1}, Lcom/adcolony/sdk/j;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "arm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/adcolony/sdk/ADCNative;->nativeNeonSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    sget-object v1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v2, "ARM architechture without NEON support. Disabling AdColony."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 495
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/h;->b(Z)V

    .line 496
    const/4 v0, 0x0

    .line 499
    :cond_0
    return v0
.end method

.method c()V
    .locals 3

    .prologue
    const/16 v0, 0x78

    .line 766
    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v1, v1, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v1, v1, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    iget-boolean v1, v1, Lcom/adcolony/sdk/aj;->m:Z

    if-eqz v1, :cond_1

    .line 770
    iget v1, p0, Lcom/adcolony/sdk/h;->S:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adcolony/sdk/h;->S:I

    .line 771
    iget v1, p0, Lcom/adcolony/sdk/h;->T:I

    iget v2, p0, Lcom/adcolony/sdk/h;->S:I

    mul-int/2addr v1, v2

    if-le v1, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/adcolony/sdk/h;->T:I

    .line 775
    new-instance v0, Lcom/adcolony/sdk/h$9;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/h$9;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0}, Lcom/adcolony/sdk/au;->a(Ljava/lang/Runnable;)Z

    .line 803
    :goto_1
    return-void

    .line 771
    :cond_0
    iget v0, p0, Lcom/adcolony/sdk/h;->T:I

    iget v1, p0, Lcom/adcolony/sdk/h;->S:I

    mul-int/2addr v0, v1

    goto :goto_0

    .line 801
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    const-string v1, "Max launch server download attempts hit, or AdColony is no longer active."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_1
.end method

.method c(Lcom/adcolony/sdk/z;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 660
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 743
    :goto_0
    return v0

    .line 668
    :cond_0
    :try_start_0
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 670
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 673
    :goto_1
    if-gtz v2, :cond_1

    .line 675
    iget-object v3, p0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    iget v2, v3, Lcom/adcolony/sdk/ab;->c:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v3, Lcom/adcolony/sdk/ab;->c:I

    .line 678
    :cond_1
    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/h;->a(I)Z

    .line 680
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "is_webview"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    .line 681
    iget-object v4, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v5, "is_display_module"

    invoke-static {v4, v5}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    .line 683
    if-eqz v3, :cond_2

    .line 685
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v3, Lcom/adcolony/sdk/h$7;

    invoke-direct {v3, p0, v4, p1}, Lcom/adcolony/sdk/h$7;-><init>(Lcom/adcolony/sdk/h;ZLcom/adcolony/sdk/z;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    move v0, v1

    .line 736
    goto :goto_0

    .line 699
    :cond_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 707
    new-instance v4, Lcom/adcolony/sdk/h$8;

    invoke-direct {v4, p0, p1, v2, v3}, Lcom/adcolony/sdk/h$8;-><init>(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/z;ILjava/util/concurrent/ExecutorService;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 730
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 731
    const-string v4, "success"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 732
    const-string v4, "id"

    invoke-static {v3, v4, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 733
    invoke-virtual {p1, v3}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 738
    :catch_0
    move-exception v1

    .line 740
    sget-object v2, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create AdUnit file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v5, "filepath"

    invoke-static {v4, v5}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 741
    sget-object v2, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 742
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method c(Lorg/json/JSONObject;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1068
    if-nez p1, :cond_0

    .line 1070
    sget-object v1, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v2, "Launch response verification failed - response is null or unknown"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 1124
    :goto_0
    return v0

    .line 1076
    :cond_0
    :try_start_0
    const-string v2, "controller"

    invoke-static {p1, v2}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1077
    const-string v3, "url"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adcolony/sdk/h;->K:Ljava/lang/String;

    .line 1078
    const-string v3, "sha1"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adcolony/sdk/h;->L:Ljava/lang/String;

    .line 1079
    const-string v2, "status"

    invoke-static {p1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adcolony/sdk/h;->M:Ljava/lang/String;

    .line 1081
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/h;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    :goto_1
    iget-object v2, p0, Lcom/adcolony/sdk/h;->M:Ljava/lang/String;

    const-string v3, "disable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1103
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v4, v4, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1112
    :goto_2
    sget-object v2, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    const-string v3, "Launch server response with disabled status. Disabling AdColony until next launch."

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 1113
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/h;->b(Z)V

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v2

    .line 1088
    :try_start_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v4, v4, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1091
    :catch_1
    move-exception v2

    goto :goto_1

    .line 1118
    :cond_1
    iget-object v2, p0, Lcom/adcolony/sdk/h;->K:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/adcolony/sdk/h;->M:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1120
    :cond_2
    sget-object v1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v2, "Missing controller status or URL. Disabling AdColony until next launch."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 1124
    goto/16 :goto_0

    .line 1106
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method d(Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/adcolony/sdk/h;->w:Lcom/adcolony/sdk/z;

    .line 753
    return-void
.end method

.method e(Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/adcolony/sdk/h;->y:Lcom/adcolony/sdk/z;

    .line 761
    return-void
.end method

.method f(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/adcolony/sdk/h;->t:Lcom/adcolony/sdk/AdColonyRewardListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1137
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v1, Lcom/adcolony/sdk/h$11;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/h$11;-><init>(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/z;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1145
    const/4 v0, 0x1

    .line 1147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g(Lcom/adcolony/sdk/z;)V
    .locals 13

    .prologue
    const/4 v0, 0x1

    .line 1158
    iget-boolean v1, p0, Lcom/adcolony/sdk/h;->F:Z

    if-eqz v1, :cond_0

    .line 1160
    sget-object v0, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    const-string v1, "AdColony is disabled. Ignoring zone_info message."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 1204
    :goto_0
    return-void

    .line 1164
    :cond_0
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "reward"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1165
    const-string v2, "reward_name"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1166
    const-string v3, "reward_amount"

    invoke-static {v1, v3}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 1167
    const-string v4, "views_per_reward"

    invoke-static {v1, v4}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 1168
    const-string v5, "views_until_reward"

    invoke-static {v1, v5}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 1170
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v6, "zone_id"

    invoke-static {v1, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1171
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v7, "status"

    invoke-static {v1, v7}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    .line 1172
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v8, "type"

    invoke-static {v1, v8}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v8

    .line 1175
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v9, "reward_name_plural"

    invoke-static {v1, v9}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1176
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v10, "reward_prompt"

    invoke-static {v1, v10}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1178
    if-eq v7, v0, :cond_1

    move v1, v0

    .line 1182
    :goto_1
    iget-object v0, p0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1184
    iget-object v0, p0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyZone;

    .line 1192
    :goto_2
    iget-object v11, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v12, "rewarded"

    invoke-static {v11, v12}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v0, Lcom/adcolony/sdk/AdColonyZone;->r:Z

    .line 1194
    iput-object v6, v0, Lcom/adcolony/sdk/AdColonyZone;->h:Ljava/lang/String;

    .line 1195
    iput-object v2, v0, Lcom/adcolony/sdk/AdColonyZone;->i:Ljava/lang/String;

    .line 1196
    iput-object v9, v0, Lcom/adcolony/sdk/AdColonyZone;->j:Ljava/lang/String;

    .line 1197
    iput-object v10, v0, Lcom/adcolony/sdk/AdColonyZone;->k:Ljava/lang/String;

    .line 1198
    iput v4, v0, Lcom/adcolony/sdk/AdColonyZone;->o:I

    .line 1199
    iput v5, v0, Lcom/adcolony/sdk/AdColonyZone;->n:I

    .line 1200
    iput v3, v0, Lcom/adcolony/sdk/AdColonyZone;->p:I

    .line 1201
    iput v7, v0, Lcom/adcolony/sdk/AdColonyZone;->l:I

    .line 1202
    iput v8, v0, Lcom/adcolony/sdk/AdColonyZone;->m:I

    .line 1203
    iput-boolean v1, v0, Lcom/adcolony/sdk/AdColonyZone;->q:Z

    goto :goto_0

    .line 1178
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 1188
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/AdColonyZone;

    invoke-direct {v0, v6}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 1189
    iget-object v11, p0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    invoke-virtual {v11, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public on_download_finished(Lcom/adcolony/sdk/ADCDownload;Lcom/adcolony/sdk/z;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adcolony/sdk/ADCDownload;",
            "Lcom/adcolony/sdk/z;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 816
    iget-object v0, p1, Lcom/adcolony/sdk/ADCDownload;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/adcolony/sdk/h;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 818
    iget-boolean v0, p1, Lcom/adcolony/sdk/ADCDownload;->e:Z

    if-eqz v0, :cond_4

    .line 821
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/adcolony/sdk/ADCDownload;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 822
    iget-object v0, p1, Lcom/adcolony/sdk/ADCDownload;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/s;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 823
    const-string v1, "sdk_version"

    iget-object v2, p0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    const-string v2, "3.0.7"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 825
    if-nez v0, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v2, v2, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 833
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/h;->c(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 835
    iget-boolean v0, p0, Lcom/adcolony/sdk/h;->N:Z

    if-nez v0, :cond_0

    .line 838
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v1, "Incomplete or disabled launch server response. Disabling AdColony until next launch."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 839
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/h;->b(Z)V

    goto :goto_0

    .line 845
    :cond_2
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/h;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 847
    sget-object v1, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v2, "Controller missing or out of date. Downloading new controller."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 849
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 850
    const-string v2, "url"

    iget-object v3, p0, Lcom/adcolony/sdk/h;->K:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 851
    const-string v2, "filepath"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v4, v4, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 853
    new-instance v2, Lcom/adcolony/sdk/ADCDownload;

    new-instance v3, Lcom/adcolony/sdk/z;

    const-string v4, "WebServices.download"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v1}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-direct {v2, v3, p0}, Lcom/adcolony/sdk/ADCDownload;-><init>(Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/ADCDownload$Listener;)V

    .line 857
    :cond_3
    iput-object v0, p0, Lcom/adcolony/sdk/h;->I:Lorg/json/JSONObject;

    goto :goto_0

    .line 861
    :cond_4
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->c()V

    goto :goto_0

    .line 865
    :cond_5
    iget-object v0, p1, Lcom/adcolony/sdk/ADCDownload;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/adcolony/sdk/h;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/adcolony/sdk/h;->L:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 870
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Downloaded controller sha1 does not match expected value, retrying."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 871
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->c()V

    goto/16 :goto_0

    .line 876
    :cond_6
    iget-boolean v0, p0, Lcom/adcolony/sdk/h;->N:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/h;->Q:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 878
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v1, Lcom/adcolony/sdk/h$10;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/h$10;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
