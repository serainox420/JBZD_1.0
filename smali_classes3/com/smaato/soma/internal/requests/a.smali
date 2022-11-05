.class public Lcom/smaato/soma/internal/requests/a;
.super Ljava/lang/Object;
.source "AdDownloader.java"

# interfaces
.implements Lcom/smaato/soma/b;
.implements Lcom/smaato/soma/internal/c/b;


# static fields
.field private static final A:Landroid/os/Handler;


# instance fields
.field private B:Lcom/smaato/soma/j;

.field private C:Lcom/smaato/soma/p;

.field private D:Lcom/smaato/soma/mediation/j;

.field private E:Lcom/smaato/soma/mediation/o;

.field private F:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/smaato/soma/mediation/o;",
            ">;"
        }
    .end annotation
.end field

.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/nativead/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/smaato/soma/mediation/CSMAdFormat;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field e:Lcom/smaato/soma/mediation/n$a;

.field f:Lcom/smaato/soma/mediation/j$a;

.field g:Lcom/smaato/soma/mediation/f$a;

.field private h:Lcom/smaato/soma/mediation/g;

.field private i:Lcom/smaato/soma/mediation/k;

.field private j:Lcom/smaato/soma/mediation/d;

.field private k:Lcom/smaato/soma/mediation/e;

.field private l:Lcom/smaato/soma/mediation/c;

.field private m:Lcom/smaato/soma/mediation/a;

.field private n:Lcom/smaato/soma/mediation/b;

.field private o:Lcom/smaato/soma/mediation/r;

.field private p:Lcom/smaato/soma/mediation/s;

.field private q:Lcom/smaato/soma/mediation/q;

.field private r:Lcom/smaato/soma/mediation/p;

.field private transient s:Lcom/smaato/soma/d;

.field private transient t:Lcom/smaato/soma/internal/requests/settings/UserSettings;

.field private u:Z

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smaato/soma/c;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/smaato/soma/internal/requests/a;

.field private x:Landroid/content/Context;

.field private y:Lcom/smaato/soma/internal/requests/settings/c;

.field private z:Lcom/smaato/soma/internal/requests/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/smaato/soma/internal/requests/a;->A:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smaato/soma/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/AdDownloaderInstantiationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/smaato/soma/d;

    invoke-direct {v0}, Lcom/smaato/soma/d;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->s:Lcom/smaato/soma/d;

    .line 114
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/UserSettings;

    invoke-direct {v0}, Lcom/smaato/soma/internal/requests/settings/UserSettings;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->t:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smaato/soma/internal/requests/a;->u:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->v:Ljava/util/List;

    .line 126
    iput-object v1, p0, Lcom/smaato/soma/internal/requests/a;->w:Lcom/smaato/soma/internal/requests/a;

    .line 131
    iput-object v1, p0, Lcom/smaato/soma/internal/requests/a;->x:Landroid/content/Context;

    .line 139
    iput-object v1, p0, Lcom/smaato/soma/internal/requests/a;->z:Lcom/smaato/soma/internal/requests/d;

    .line 147
    iput-object v1, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    .line 171
    iput-object v1, p0, Lcom/smaato/soma/internal/requests/a;->E:Lcom/smaato/soma/mediation/o;

    .line 176
    const-string v0, "AdDowndloader_Med_Banner"

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->c:Ljava/lang/String;

    .line 178
    const-string v0, "AdDowndloader_Med"

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    .line 815
    new-instance v0, Lcom/smaato/soma/internal/requests/a$6;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/a$6;-><init>(Lcom/smaato/soma/internal/requests/a;)V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->e:Lcom/smaato/soma/mediation/n$a;

    .line 896
    new-instance v0, Lcom/smaato/soma/internal/requests/a$7;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/a$7;-><init>(Lcom/smaato/soma/internal/requests/a;)V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->f:Lcom/smaato/soma/mediation/j$a;

    .line 1051
    new-instance v0, Lcom/smaato/soma/internal/requests/a$8;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/a$8;-><init>(Lcom/smaato/soma/internal/requests/a;)V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->g:Lcom/smaato/soma/mediation/f$a;

    .line 225
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/c;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/requests/settings/c;-><init>(Lcom/smaato/soma/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->y:Lcom/smaato/soma/internal/requests/settings/c;

    .line 226
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smaato/soma/internal/requests/f;->a(Landroid/content/Context;)V

    .line 227
    iput-object p0, p0, Lcom/smaato/soma/internal/requests/a;->w:Lcom/smaato/soma/internal/requests/a;

    .line 228
    invoke-static {}, Lcom/smaato/soma/internal/a;->a()Lcom/smaato/soma/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/a;->b()Lcom/smaato/soma/internal/requests/d;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->z:Lcom/smaato/soma/internal/requests/d;

    .line 229
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->z:Lcom/smaato/soma/internal/requests/d;

    invoke-interface {v0, p0}, Lcom/smaato/soma/internal/requests/d;->a(Lcom/smaato/soma/internal/c/b;)V

    .line 230
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/a;->x:Landroid/content/Context;

    .line 231
    iput-object p2, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    throw v0

    .line 234
    :catch_1
    move-exception v0

    .line 235
    new-instance v1, Lcom/smaato/soma/exception/AdDownloaderInstantiationException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/AdDownloaderInstantiationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/smaato/soma/internal/requests/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->v:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1193
    if-eqz p1, :cond_2

    .line 1195
    :try_start_0
    instance-of v1, p1, Lcom/smaato/soma/mediation/n;

    if-eqz v1, :cond_0

    .line 1196
    move-object v0, p1

    check-cast v0, Lcom/smaato/soma/mediation/n;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/smaato/soma/mediation/n;->a()V

    .line 1199
    :cond_0
    instance-of v1, p1, Lcom/smaato/soma/mediation/f;

    if-eqz v1, :cond_1

    .line 1200
    move-object v0, p1

    check-cast v0, Lcom/smaato/soma/mediation/f;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/smaato/soma/mediation/f;->a()V

    .line 1203
    :cond_1
    instance-of v1, p1, Lcom/smaato/soma/mediation/j;

    if-eqz v1, :cond_2

    .line 1204
    check-cast p1, Lcom/smaato/soma/mediation/j;

    invoke-virtual {p1}, Lcom/smaato/soma/mediation/j;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    :cond_2
    :goto_0
    return-void

    .line 1210
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1209
    :catch_1
    move-exception v1

    goto :goto_0

    .line 1208
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/smaato/soma/internal/requests/a;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/smaato/soma/internal/requests/a;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/p;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->C:Lcom/smaato/soma/p;

    return-object v0
.end method

.method static synthetic c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->E:Lcom/smaato/soma/mediation/o;

    return-object v0
.end method

.method static synthetic d(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/j;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    return-object v0
.end method

.method static synthetic e(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/internal/requests/settings/c;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->y:Lcom/smaato/soma/internal/requests/settings/c;

    return-object v0
.end method

.method static synthetic h()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/smaato/soma/internal/requests/a;->A:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/smaato/soma/internal/requests/settings/c;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->y:Lcom/smaato/soma/internal/requests/settings/c;

    return-object v0
.end method

.method protected final a(Lcom/smaato/soma/d;Lcom/smaato/soma/internal/requests/settings/UserSettings;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToMakeAdRequestUrl;
        }
    .end annotation

    .prologue
    .line 259
    :try_start_0
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/smaato/soma/internal/requests/f;->a(Lcom/smaato/soma/d;Lcom/smaato/soma/internal/requests/settings/UserSettings;Lcom/smaato/soma/internal/requests/a;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    throw v0

    .line 263
    :catch_1
    move-exception v0

    .line 264
    new-instance v1, Lcom/smaato/soma/exception/UnableToMakeAdRequestUrl;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToMakeAdRequestUrl;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/smaato/soma/c;)V
    .locals 1

    .prologue
    .line 345
    new-instance v0, Lcom/smaato/soma/internal/requests/a$4;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/requests/a$4;-><init>(Lcom/smaato/soma/internal/requests/a;Lcom/smaato/soma/c;)V

    .line 351
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a$4;->c()Ljava/lang/Object;

    .line 352
    return-void
.end method

.method public a(Lcom/smaato/soma/mediation/j;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/a;->D:Lcom/smaato/soma/mediation/j;

    .line 406
    return-void
.end method

.method public a(Lcom/smaato/soma/p;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/a;->C:Lcom/smaato/soma/p;

    .line 392
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1153
    new-instance v0, Lcom/smaato/soma/debug/b;

    const/4 v1, 0x1

    sget-object v2, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 1157
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1164
    .line 1167
    if-nez p1, :cond_0

    .line 1184
    :goto_0
    return v1

    .line 1171
    :cond_0
    if-eqz p1, :cond_1

    .line 1172
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1173
    new-instance v2, Lcom/smaato/soma/internal/requests/b;

    invoke-direct {v2}, Lcom/smaato/soma/internal/requests/b;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/smaato/soma/internal/requests/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    .line 1183
    goto :goto_0

    .line 1178
    :catch_0
    move-exception v2

    .line 1179
    new-instance v2, Lcom/smaato/soma/debug/b;

    const-string v3, "SOMA"

    const-string v4, "Error during firing Mediation URL"

    sget-object v5, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v2}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0

    .line 1176
    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public b()Lcom/smaato/soma/p;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->C:Lcom/smaato/soma/p;

    return-object v0
.end method

.method public final b(Lcom/smaato/soma/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToNotifyAdListener;
        }
    .end annotation

    .prologue
    .line 771
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/requests/a$5;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/a$5;-><init>(Lcom/smaato/soma/internal/requests/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 772
    if-nez p1, :cond_1

    .line 773
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA"

    const-string v2, "No Banner Received !!"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    invoke-interface {p1}, Lcom/smaato/soma/p;->k()Lcom/smaato/soma/ErrorCode;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_AD_AVAILABLE:Lcom/smaato/soma/ErrorCode;

    if-ne v0, v1, :cond_2

    .line 779
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA"

    const-string v2, "No Ad Available"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 784
    :cond_2
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA"

    const-string v2, "Banner download complete"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 792
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->x:Landroid/content/Context;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/smaato/soma/p;->p()Ljava/util/TreeMap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/smaato/soma/p;->p()Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    invoke-interface {p1}, Lcom/smaato/soma/p;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 794
    :cond_4
    invoke-interface {p1}, Lcom/smaato/soma/p;->p()Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->F:Ljava/util/TreeMap;

    .line 796
    invoke-virtual {p0, p1}, Lcom/smaato/soma/internal/requests/a;->a(Lcom/smaato/soma/p;)V

    .line 799
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->d()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 808
    throw v0

    .line 801
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/c;

    .line 803
    iget-object v2, p0, Lcom/smaato/soma/internal/requests/a;->w:Lcom/smaato/soma/internal/requests/a;

    invoke-interface {v0, v2, p1}, Lcom/smaato/soma/c;->onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 809
    :catch_1
    move-exception v0

    .line 810
    new-instance v1, Lcom/smaato/soma/exception/UnableToNotifyAdListener;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToNotifyAdListener;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Lcom/smaato/soma/d;Lcom/smaato/soma/internal/requests/settings/UserSettings;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RequestingBannerFailed;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->z:Lcom/smaato/soma/internal/requests/d;

    invoke-virtual {p0, p1, p2}, Lcom/smaato/soma/internal/requests/a;->a(Lcom/smaato/soma/d;Lcom/smaato/soma/internal/requests/settings/UserSettings;)Ljava/net/URL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smaato/soma/internal/requests/d;->b(Ljava/net/URL;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    new-instance v1, Lcom/smaato/soma/debug/b;

    const-string v2, "SOMA"

    const-string v3, "Error occured during AdDownloader:asyncLoadNewBanner()"

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 302
    throw v0

    .line 303
    :catch_1
    move-exception v0

    .line 304
    new-instance v1, Lcom/smaato/soma/debug/b;

    const-string v2, "SOMA"

    const-string v3, "Exception occured during AdDownloader:asyncLoadNewBanner()"

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 308
    new-instance v1, Lcom/smaato/soma/exception/RequestingBannerFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/RequestingBannerFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()Lcom/smaato/soma/mediation/j;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->D:Lcom/smaato/soma/mediation/j;

    return-object v0
.end method

.method public final d()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 415
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->F:Ljava/util/TreeMap;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->F:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 416
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->F:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 417
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a;->F:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smaato/soma/mediation/o;

    .line 420
    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->F:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v3, Lcom/smaato/soma/debug/b;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Priority => "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v3, v4, v0, v2, v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    .line 422
    invoke-static {v3}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 427
    iput-object v1, p0, Lcom/smaato/soma/internal/requests/a;->E:Lcom/smaato/soma/mediation/o;

    .line 430
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    instance-of v0, v0, Lcom/smaato/soma/BannerView;

    if-eqz v0, :cond_3

    .line 431
    sget-object v0, Lcom/smaato/soma/mediation/CSMAdFormat;->BANNER:Lcom/smaato/soma/mediation/CSMAdFormat;

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->b:Lcom/smaato/soma/mediation/CSMAdFormat;

    .line 443
    :goto_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->C:Lcom/smaato/soma/p;

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->b:Lcom/smaato/soma/mediation/CSMAdFormat;

    invoke-interface {v0, v3}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/mediation/CSMAdFormat;)V

    .line 445
    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 448
    :try_start_0
    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 572
    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 574
    :cond_1
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v3, "SOMA"

    const-string v4, "Mediation Network Class Name is empty"

    const/4 v5, 0x1

    sget-object v6, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 579
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->d()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 695
    :cond_2
    :goto_2
    return-void

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    instance-of v0, v0, Lcom/smaato/soma/interstitial/b;

    if-eqz v0, :cond_4

    .line 433
    sget-object v0, Lcom/smaato/soma/mediation/CSMAdFormat;->INTERSTITIAL:Lcom/smaato/soma/mediation/CSMAdFormat;

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->b:Lcom/smaato/soma/mediation/CSMAdFormat;

    goto :goto_0

    .line 434
    :cond_4
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/d;->c()Lcom/smaato/soma/AdType;

    move-result-object v0

    sget-object v3, Lcom/smaato/soma/AdType;->NATIVE:Lcom/smaato/soma/AdType;

    if-ne v0, v3, :cond_5

    .line 435
    sget-object v0, Lcom/smaato/soma/mediation/CSMAdFormat;->NATIVE:Lcom/smaato/soma/mediation/CSMAdFormat;

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->b:Lcom/smaato/soma/mediation/CSMAdFormat;

    goto :goto_0

    .line 438
    :cond_5
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->f()V

    goto :goto_2

    .line 448
    :sswitch_0
    :try_start_1
    const-string v4, "Facebook_CSM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "AdMob_CSM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v4, "MoPub_CSM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "MillennialMedia_CSM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "iAd_CSM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    .line 450
    :pswitch_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->b:Lcom/smaato/soma/mediation/CSMAdFormat;

    sget-object v3, Lcom/smaato/soma/mediation/CSMAdFormat;->NATIVE:Lcom/smaato/soma/mediation/CSMAdFormat;

    if-ne v0, v3, :cond_7

    .line 452
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->l:Lcom/smaato/soma/mediation/c;

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->l:Lcom/smaato/soma/mediation/c;

    if-nez v0, :cond_6

    .line 455
    new-instance v0, Lcom/smaato/soma/mediation/c;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/c;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->l:Lcom/smaato/soma/mediation/c;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 459
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/nativead/NativeAd;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->l:Lcom/smaato/soma/mediation/c;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/smaato/soma/nativead/NativeAd;->a(Ljava/lang/ref/WeakReference;)V
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 465
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->l:Lcom/smaato/soma/mediation/c;

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->x:Landroid/content/Context;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->e:Lcom/smaato/soma/mediation/n$a;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/smaato/soma/mediation/c;->a(Landroid/content/Context;Lcom/smaato/soma/mediation/n$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 467
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 470
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->b:Lcom/smaato/soma/mediation/CSMAdFormat;

    sget-object v3, Lcom/smaato/soma/mediation/CSMAdFormat;->INTERSTITIAL:Lcom/smaato/soma/mediation/CSMAdFormat;

    if-ne v0, v3, :cond_9

    .line 472
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->n:Lcom/smaato/soma/mediation/b;

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/Object;)V

    .line 474
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->n:Lcom/smaato/soma/mediation/b;

    if-nez v0, :cond_8

    .line 475
    new-instance v0, Lcom/smaato/soma/mediation/b;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/b;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->n:Lcom/smaato/soma/mediation/b;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 479
    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    check-cast v0, Lcom/smaato/soma/interstitial/b;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->n:Lcom/smaato/soma/mediation/b;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/smaato/soma/interstitial/b;->setMediationReference(Ljava/lang/ref/WeakReference;)V
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 482
    :goto_4
    :try_start_6
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    check-cast v0, Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getInterstitialParent()Lcom/smaato/soma/interstitial/Interstitial;

    move-result-object v0

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->f:Lcom/smaato/soma/mediation/j$a;

    invoke-virtual {v0, v3}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/mediation/j$a;)V

    .line 483
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->n:Lcom/smaato/soma/mediation/b;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/requests/a;->a(Lcom/smaato/soma/mediation/j;)V

    .line 484
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->n:Lcom/smaato/soma/mediation/b;

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->x:Landroid/content/Context;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->f:Lcom/smaato/soma/mediation/j$a;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/smaato/soma/mediation/b;->a(Landroid/content/Context;Lcom/smaato/soma/mediation/j$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 631
    :catch_1
    move-exception v0

    .line 632
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v3, "SOMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoClassDefFoundError happened with Mediation. Check configurations for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 633
    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    .line 632
    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 638
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->d()V

    goto/16 :goto_2

    .line 488
    :cond_9
    :try_start_7
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->m:Lcom/smaato/soma/mediation/a;

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->m:Lcom/smaato/soma/mediation/a;

    if-nez v0, :cond_a

    .line 492
    new-instance v0, Lcom/smaato/soma/mediation/a;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/a;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->m:Lcom/smaato/soma/mediation/a;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 496
    :cond_a
    :try_start_8
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    check-cast v0, Lcom/smaato/soma/BannerView;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->m:Lcom/smaato/soma/mediation/a;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/smaato/soma/BannerView;->setMediationReference(Ljava/lang/ref/WeakReference;)V
    :try_end_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 501
    :goto_5
    :try_start_9
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->m:Lcom/smaato/soma/mediation/a;

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->x:Landroid/content/Context;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->g:Lcom/smaato/soma/mediation/f$a;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/smaato/soma/mediation/a;->a(Landroid/content/Context;Lcom/smaato/soma/mediation/f$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    .line 639
    :catch_2
    move-exception v0

    .line 640
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v3, "SOMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoClassDefFoundError happened with Mediation. Check configurations for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 641
    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    .line 640
    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 646
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->d()V

    goto/16 :goto_2

    .line 506
    :pswitch_1
    :try_start_a
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->b:Lcom/smaato/soma/mediation/CSMAdFormat;

    sget-object v3, Lcom/smaato/soma/mediation/CSMAdFormat;->INTERSTITIAL:Lcom/smaato/soma/mediation/CSMAdFormat;

    if-ne v0, v3, :cond_b

    .line 507
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->k:Lcom/smaato/soma/mediation/e;

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/Object;)V

    .line 508
    new-instance v0, Lcom/smaato/soma/mediation/e;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/e;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->k:Lcom/smaato/soma/mediation/e;

    .line 509
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    check-cast v0, Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getInterstitialParent()Lcom/smaato/soma/interstitial/Interstitial;

    move-result-object v0

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->f:Lcom/smaato/soma/mediation/j$a;

    invoke-virtual {v0, v3}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/mediation/j$a;)V

    .line 510
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->k:Lcom/smaato/soma/mediation/e;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/requests/a;->a(Lcom/smaato/soma/mediation/j;)V

    .line 511
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->k:Lcom/smaato/soma/mediation/e;

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->x:Landroid/content/Context;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->f:Lcom/smaato/soma/mediation/j$a;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/smaato/soma/mediation/e;->a(Landroid/content/Context;Lcom/smaato/soma/mediation/j$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    .line 647
    :catch_3
    move-exception v0

    .line 648
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v3, "SOMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception happened with Mediation. Check configurations for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 649
    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    .line 648
    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 654
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->d()V

    goto/16 :goto_2

    .line 516
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->j:Lcom/smaato/soma/mediation/d;

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/Object;)V

    .line 518
    new-instance v0, Lcom/smaato/soma/mediation/d;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/d;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->j:Lcom/smaato/soma/mediation/d;

    .line 519
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->j:Lcom/smaato/soma/mediation/d;

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->x:Landroid/content/Context;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->g:Lcom/smaato/soma/mediation/f$a;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/smaato/soma/mediation/d;->a(Landroid/content/Context;Lcom/smaato/soma/mediation/f$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V

    goto/16 :goto_2

    .line 524
    :pswitch_2
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->b:Lcom/smaato/soma/mediation/CSMAdFormat;

    sget-object v3, Lcom/smaato/soma/mediation/CSMAdFormat;->INTERSTITIAL:Lcom/smaato/soma/mediation/CSMAdFormat;

    if-ne v0, v3, :cond_d

    .line 526
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->p:Lcom/smaato/soma/mediation/s;

    if-nez v0, :cond_c

    .line 527
    new-instance v0, Lcom/smaato/soma/mediation/s;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/s;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->p:Lcom/smaato/soma/mediation/s;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 531
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    check-cast v0, Lcom/smaato/soma/interstitial/b;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->p:Lcom/smaato/soma/mediation/s;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/smaato/soma/interstitial/b;->setMediationReference(Ljava/lang/ref/WeakReference;)V
    :try_end_c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 534
    :goto_6
    :try_start_d
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    check-cast v0, Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getInterstitialParent()Lcom/smaato/soma/interstitial/Interstitial;

    move-result-object v0

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->f:Lcom/smaato/soma/mediation/j$a;

    invoke-virtual {v0, v3}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/mediation/j$a;)V

    .line 535
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->p:Lcom/smaato/soma/mediation/s;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/requests/a;->a(Lcom/smaato/soma/mediation/j;)V

    .line 536
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->p:Lcom/smaato/soma/mediation/s;

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->x:Landroid/content/Context;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->f:Lcom/smaato/soma/mediation/j$a;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/smaato/soma/mediation/s;->a(Landroid/content/Context;Lcom/smaato/soma/mediation/j$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V

    goto/16 :goto_2

    .line 540
    :cond_d
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->o:Lcom/smaato/soma/mediation/r;

    if-nez v0, :cond_e

    .line 541
    new-instance v0, Lcom/smaato/soma/mediation/r;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/r;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->o:Lcom/smaato/soma/mediation/r;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 545
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    check-cast v0, Lcom/smaato/soma/BannerView;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->o:Lcom/smaato/soma/mediation/r;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/smaato/soma/BannerView;->setMediationReference(Ljava/lang/ref/WeakReference;)V
    :try_end_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 550
    :goto_7
    :try_start_f
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->o:Lcom/smaato/soma/mediation/r;

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->x:Landroid/content/Context;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->g:Lcom/smaato/soma/mediation/f$a;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/smaato/soma/mediation/r;->a(Landroid/content/Context;Lcom/smaato/soma/mediation/f$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V

    goto/16 :goto_2

    .line 555
    :pswitch_3
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->b:Lcom/smaato/soma/mediation/CSMAdFormat;

    sget-object v3, Lcom/smaato/soma/mediation/CSMAdFormat;->INTERSTITIAL:Lcom/smaato/soma/mediation/CSMAdFormat;

    if-ne v0, v3, :cond_f

    .line 556
    new-instance v0, Lcom/smaato/soma/mediation/q;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/q;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->q:Lcom/smaato/soma/mediation/q;

    .line 557
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    check-cast v0, Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getInterstitialParent()Lcom/smaato/soma/interstitial/Interstitial;

    move-result-object v0

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->f:Lcom/smaato/soma/mediation/j$a;

    invoke-virtual {v0, v3}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/mediation/j$a;)V

    .line 558
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->q:Lcom/smaato/soma/mediation/q;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/requests/a;->a(Lcom/smaato/soma/mediation/j;)V

    .line 559
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->q:Lcom/smaato/soma/mediation/q;

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->x:Landroid/content/Context;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->f:Lcom/smaato/soma/mediation/j$a;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/smaato/soma/mediation/q;->a(Landroid/content/Context;Lcom/smaato/soma/mediation/j$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V

    goto/16 :goto_2

    .line 562
    :cond_f
    new-instance v0, Lcom/smaato/soma/mediation/p;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/p;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->r:Lcom/smaato/soma/mediation/p;

    .line 563
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->r:Lcom/smaato/soma/mediation/p;

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->x:Landroid/content/Context;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->g:Lcom/smaato/soma/mediation/f$a;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/smaato/soma/mediation/p;->a(Landroid/content/Context;Lcom/smaato/soma/mediation/f$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V

    goto/16 :goto_2

    .line 568
    :pswitch_4
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->d()V

    goto/16 :goto_2

    .line 585
    :cond_10
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->b:Lcom/smaato/soma/mediation/CSMAdFormat;

    sget-object v3, Lcom/smaato/soma/mediation/CSMAdFormat;->INTERSTITIAL:Lcom/smaato/soma/mediation/CSMAdFormat;

    if-ne v0, v3, :cond_13

    .line 587
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->i:Lcom/smaato/soma/mediation/k;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->i:Lcom/smaato/soma/mediation/k;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/k;->e()Lcom/smaato/soma/mediation/j;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 588
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->i:Lcom/smaato/soma/mediation/k;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/k;->e()Lcom/smaato/soma/mediation/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/Object;)V

    .line 590
    :cond_11
    new-instance v0, Lcom/smaato/soma/mediation/l;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/l;-><init>()V

    new-instance v3, Lcom/smaato/soma/interstitial/b;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->x:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/smaato/soma/interstitial/b;-><init>(Landroid/content/Context;)V

    .line 592
    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/a;->f:Lcom/smaato/soma/mediation/j$a;

    .line 590
    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/smaato/soma/mediation/l;->a(Lcom/smaato/soma/interstitial/b;Ljava/lang/String;Lcom/smaato/soma/mediation/o;Lcom/smaato/soma/mediation/j$a;)Lcom/smaato/soma/mediation/k;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->i:Lcom/smaato/soma/mediation/k;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 598
    :try_start_10
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    check-cast v0, Lcom/smaato/soma/interstitial/b;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->i:Lcom/smaato/soma/mediation/k;

    invoke-virtual {v4}, Lcom/smaato/soma/mediation/k;->e()Lcom/smaato/soma/mediation/j;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/smaato/soma/interstitial/b;->setCustomMediationReference(Ljava/lang/ref/WeakReference;)V
    :try_end_10
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    .line 601
    :goto_8
    :try_start_11
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    check-cast v0, Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getInterstitialParent()Lcom/smaato/soma/interstitial/Interstitial;

    move-result-object v0

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->f:Lcom/smaato/soma/mediation/j$a;

    invoke-virtual {v0, v3}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/mediation/j$a;)V

    .line 603
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->i:Lcom/smaato/soma/mediation/k;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->i:Lcom/smaato/soma/mediation/k;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/k;->e()Lcom/smaato/soma/mediation/j;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 604
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->i:Lcom/smaato/soma/mediation/k;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/k;->e()Lcom/smaato/soma/mediation/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/requests/a;->a(Lcom/smaato/soma/mediation/j;)V

    .line 605
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->i:Lcom/smaato/soma/mediation/k;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/k;->f()V

    goto/16 :goto_2

    .line 607
    :cond_12
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->d()V

    goto/16 :goto_2

    .line 613
    :cond_13
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->h:Lcom/smaato/soma/mediation/g;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->h:Lcom/smaato/soma/mediation/g;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/g;->d()Lcom/smaato/soma/mediation/f;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 614
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->h:Lcom/smaato/soma/mediation/g;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/g;->d()Lcom/smaato/soma/mediation/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/Object;)V

    .line 616
    :cond_14
    new-instance v0, Lcom/smaato/soma/mediation/h;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/h;-><init>()V

    iget-object v3, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    .line 617
    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/a;->g:Lcom/smaato/soma/mediation/f$a;

    .line 616
    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/smaato/soma/mediation/h;->a(Lcom/smaato/soma/j;Ljava/lang/String;Lcom/smaato/soma/mediation/o;Lcom/smaato/soma/mediation/f$a;)Lcom/smaato/soma/mediation/g;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->h:Lcom/smaato/soma/mediation/g;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    .line 620
    :try_start_12
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->B:Lcom/smaato/soma/j;

    check-cast v0, Lcom/smaato/soma/BannerView;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/smaato/soma/internal/requests/a;->h:Lcom/smaato/soma/mediation/g;

    invoke-virtual {v4}, Lcom/smaato/soma/mediation/g;->d()Lcom/smaato/soma/mediation/f;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/smaato/soma/BannerView;->setCustomMediationReference(Ljava/lang/ref/WeakReference;)V
    :try_end_12
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1

    .line 624
    :goto_9
    :try_start_13
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->h:Lcom/smaato/soma/mediation/g;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/g;->e()V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_2

    .line 658
    :cond_15
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/p;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/p;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 661
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->z:Lcom/smaato/soma/internal/requests/d;

    if-eqz v0, :cond_16

    .line 663
    :try_start_14
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->z:Lcom/smaato/soma/internal/requests/d;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/smaato/soma/p;->o()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/smaato/soma/internal/requests/d;->b(Ljava/net/URL;)Z
    :try_end_14
    .catch Lcom/smaato/soma/exception/BannerHttpRequestFailed; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 682
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/smaato/soma/p;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 664
    :catch_4
    move-exception v0

    .line 665
    :try_start_15
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA"

    const-string v2, "BannerHttpRequestFailed @SOMA"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 671
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->f()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 682
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/smaato/soma/p;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 672
    :catch_5
    move-exception v0

    .line 673
    :try_start_16
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA"

    const-string v2, "MalformedURL PassBack URL?"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 679
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->f()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 682
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/smaato/soma/p;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/smaato/soma/p;->a(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_16
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->f()V

    goto/16 :goto_2

    .line 691
    :cond_17
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->f()V

    goto/16 :goto_2

    .line 622
    :catch_6
    move-exception v0

    goto/16 :goto_9

    .line 621
    :catch_7
    move-exception v0

    goto/16 :goto_9

    .line 599
    :catch_8
    move-exception v0

    goto/16 :goto_8

    :catch_9
    move-exception v0

    goto/16 :goto_8

    .line 546
    :catch_a
    move-exception v0

    goto/16 :goto_7

    .line 532
    :catch_b
    move-exception v0

    goto/16 :goto_6

    .line 497
    :catch_c
    move-exception v0

    goto/16 :goto_5

    .line 480
    :catch_d
    move-exception v0

    goto/16 :goto_4

    .line 460
    :catch_e
    move-exception v0

    goto/16 :goto_3

    .line 448
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1a6f55a5 -> :sswitch_1
        -0xbddaefc -> :sswitch_0
        -0x79d6e87 -> :sswitch_2
        0x2706b18a -> :sswitch_4
        0x42fe3cb7 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/smaato/soma/internal/requests/a$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/a$1;-><init>(Lcom/smaato/soma/internal/requests/a;)V

    .line 281
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a$1;->c()Ljava/lang/Object;

    .line 282
    return-void
.end method

.method public final f()V
    .locals 5

    .prologue
    .line 704
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA"

    const-string v2, "Exiting through AdDownloader:exitMediationNetworkWithERROR()"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 709
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_AD_AVAILABLE:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 711
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->ERROR:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/bannerutilities/constant/BannerStatus;)V

    .line 712
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Z)V

    .line 713
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/mediation/CSMAdFormat;->UNDEFINED:Lcom/smaato/soma/mediation/CSMAdFormat;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/mediation/CSMAdFormat;)V

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->g()V

    .line 718
    return-void
.end method

.method public final g()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 728
    :try_start_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA"

    const-string v2, "Exiting through AdDownloader:exitMediationNetwork()"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/a;->F:Ljava/util/TreeMap;

    .line 736
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->C:Lcom/smaato/soma/p;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Ljava/util/TreeMap;)V

    .line 746
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/c;

    .line 747
    iget-object v2, p0, Lcom/smaato/soma/internal/requests/a;->w:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/smaato/soma/c;->onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 750
    :catch_0
    move-exception v0

    .line 751
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA"

    const-string v2, "Exception occured in AdDownloader:exitMediationNetwork()"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 760
    :cond_0
    return-void
.end method

.method public final getAdSettings()Lcom/smaato/soma/d;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->s:Lcom/smaato/soma/d;

    return-object v0
.end method

.method public final getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a;->t:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    return-object v0
.end method

.method public final setAdSettings(Lcom/smaato/soma/d;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/a;->s:Lcom/smaato/soma/d;

    .line 324
    return-void
.end method

.method public final setLocationUpdateEnabled(Z)V
    .locals 1

    .prologue
    .line 1252
    new-instance v0, Lcom/smaato/soma/internal/requests/a$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/a$2;-><init>(Lcom/smaato/soma/internal/requests/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 1253
    new-instance v0, Lcom/smaato/soma/internal/requests/a$3;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/requests/a$3;-><init>(Lcom/smaato/soma/internal/requests/a;Z)V

    .line 1260
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a$3;->c()Ljava/lang/Object;

    .line 1261
    return-void
.end method

.method public setUserSettings(Lcom/smaato/soma/internal/requests/settings/UserSettings;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/a;->t:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    .line 370
    return-void
.end method
