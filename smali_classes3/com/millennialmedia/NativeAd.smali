.class public Lcom/millennialmedia/NativeAd;
.super Lcom/millennialmedia/internal/AdPlacement;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/NativeAd$ExpirationRunnable;,
        Lcom/millennialmedia/NativeAd$ImpressionReporter;,
        Lcom/millennialmedia/NativeAd$NativeAdMetadata;,
        Lcom/millennialmedia/NativeAd$NativeErrorStatus;,
        Lcom/millennialmedia/NativeAd$NativeListener;,
        Lcom/millennialmedia/NativeAd$ComponentName;
    }
.end annotation


# static fields
.field public static final COMPONENT_ID_BODY:Ljava/lang/String; = "body"

.field public static final COMPONENT_ID_CALL_TO_ACTION:Ljava/lang/String; = "callToAction"

.field public static final COMPONENT_ID_DISCLAIMER:Ljava/lang/String; = "disclaimer"

.field public static final COMPONENT_ID_ICON_IMAGE:Ljava/lang/String; = "iconImage"

.field public static final COMPONENT_ID_MAIN_IMAGE:Ljava/lang/String; = "mainImage"

.field public static final COMPONENT_ID_RATING:Ljava/lang/String; = "rating"

.field public static final COMPONENT_ID_TITLE:Ljava/lang/String; = "title"

.field public static final NATIVE_TYPE_INLINE:Ljava/lang/String; = "inline"

.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/millennialmedia/NativeAd$NativeListener;

.field private h:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

.field private i:Z

.field private j:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private k:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private l:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field public loadedComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Lcom/millennialmedia/NativeAd$ImpressionReporter;

.field private n:Z

.field private o:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/millennialmedia/NativeAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 399
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/AdPlacement;-><init>(Ljava/lang/String;)V

    .line 75
    iput-boolean v0, p0, Lcom/millennialmedia/NativeAd;->i:Z

    .line 80
    iput-boolean v0, p0, Lcom/millennialmedia/NativeAd;->n:Z

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->q:Ljava/util/Map;

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    .line 401
    if-eqz p2, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    aget-object v1, p2, v0

    .line 402
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    :cond_0
    new-instance v0, Lcom/millennialmedia/MMException;

    const-string v1, "Unable to create native ad, nativeTypes is required"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getNativeTypeDefinitions()Ljava/util/Map;

    move-result-object v5

    .line 412
    array-length v6, p2

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v7, p2, v3

    .line 413
    const/4 v2, 0x0

    .line 415
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 416
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->typeName:Ljava/lang/String;

    .line 419
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    :goto_1
    if-eqz v1, :cond_3

    .line 427
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 429
    :cond_3
    new-instance v0, Lcom/millennialmedia/MMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load native ad, specified native type <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> is not recognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_4
    iput-object v4, p0, Lcom/millennialmedia/NativeAd;->p:Ljava/util/List;

    .line 435
    return-void

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method

.method private static a(Lcom/millennialmedia/internal/adadapters/AdAdapter;)J
    .locals 3

    .prologue
    .line 2001
    const-wide/16 v0, 0x3e8

    .line 2002
    instance-of v2, p0, Lcom/millennialmedia/internal/adadapters/MMAdAdapter;

    if-eqz v2, :cond_0

    .line 2003
    check-cast p0, Lcom/millennialmedia/internal/adadapters/MMAdAdapter;

    invoke-interface {p0}, Lcom/millennialmedia/internal/adadapters/MMAdAdapter;->getImpressionDelay()J

    move-result-wide v0

    .line 2006
    :cond_0
    return-wide v0
.end method

.method static synthetic a(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->b:Lcom/millennialmedia/internal/PlayList;

    return-object p1
.end method

.method private a(Lcom/millennialmedia/NativeAd$ComponentName;I)Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1304
    .line 1306
    sget-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    if-ne p1, v0, :cond_1

    .line 1307
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->v:Ljava/util/List;

    .line 1314
    :goto_0
    if-nez v0, :cond_3

    .line 1315
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get component info for component name <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> and instance id <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">, did not find component info list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1343
    :cond_0
    :goto_1
    return-object v0

    .line 1308
    :cond_1
    sget-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    if-ne p1, v0, :cond_2

    .line 1309
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->w:Ljava/util/List;

    goto :goto_0

    .line 1310
    :cond_2
    sget-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    if-ne p1, v0, :cond_6

    .line 1311
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->x:Ljava/util/List;

    goto :goto_0

    .line 1321
    :cond_3
    const/4 v2, 0x1

    if-ge p2, v2, :cond_4

    .line 1322
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get component info for component name <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> and instance id <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">, instance id must be greater than 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1325
    goto :goto_1

    .line 1328
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p2, :cond_5

    .line 1329
    sget-object v2, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get component info for component name <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> and instance id <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">, only <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1330
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "> instances found"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1329
    invoke-static {v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1332
    goto :goto_1

    .line 1335
    :cond_5
    add-int/lit8 v2, p2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    .line 1336
    if-nez v0, :cond_0

    .line 1337
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get component info for component name <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> and instance id <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">, found value is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1340
    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->l:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1349
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1350
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve the requested <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> instance, instance value must be 1 or greater"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1367
    :goto_0
    return-object v0

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1357
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    .line 1358
    sget-object v2, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve the requested <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> instance <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">, only <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1360
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "> instances available"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1358
    invoke-static {v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1362
    goto :goto_0

    .line 1365
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/millennialmedia/NativeAd;->a(Ljava/lang/String;I)V

    .line 1367
    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/millennialmedia/NativeAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 1755
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1756
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v0, 0x384

    if-gt v1, v0, :cond_1

    .line 1757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1759
    if-eqz v0, :cond_1

    .line 1760
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1761
    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1756
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1763
    :cond_0
    new-instance v1, Lcom/millennialmedia/MMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected View with tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to be a TextView."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1771
    :cond_1
    return-object v2
.end method

.method private a(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V
    .locals 6

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v2

    .line 1379
    new-instance v0, Lcom/millennialmedia/NativeAd$6;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd$6;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/NativeAd$ComponentName;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1410
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->f(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacementReporter;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/NativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/NativeAd;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 8

    .prologue
    .line 549
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->copy()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v2

    .line 551
    monitor-enter p0

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    const-string v1, "play_list_loaded"

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    const-string v1, "ad_adapter_load_failed"

    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    :cond_0
    monitor-exit p0

    .line 682
    :goto_0
    return-void

    .line 559
    :cond_1
    const-string v0, "loading_ad_adapter"

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    .line 566
    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getItemHash()I

    .line 567
    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 568
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->b:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/PlayList;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 571
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to find ad adapter in play list"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_2
    invoke-direct {p0, v2}, Lcom/millennialmedia/NativeAd;->e(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 580
    :cond_3
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListItemReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    move-result-object v3

    .line 582
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->b:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v0, p0, v3}, Lcom/millennialmedia/internal/PlayList;->getNextAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    .line 583
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 586
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 589
    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->h:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    .line 592
    iget v1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->requestTimeout:I

    .line 593
    if-lez v1, :cond_5

    .line 594
    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->k:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v4, :cond_4

    .line 595
    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->k:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v4}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 600
    :cond_4
    new-instance v4, Lcom/millennialmedia/NativeAd$3;

    invoke-direct {v4, p0, v2, v3}, Lcom/millennialmedia/NativeAd$3;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    int-to-long v6, v1

    invoke-static {v4, v6, v7}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->k:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 618
    :cond_5
    new-instance v1, Lcom/millennialmedia/NativeAd$4;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/millennialmedia/NativeAd$4;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/NativeAdapter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->init(Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;)V

    goto :goto_0

    .line 679
    :cond_6
    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    .line 680
    invoke-direct {p0, v2}, Lcom/millennialmedia/NativeAd;->c(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method

.method private a(Lcom/millennialmedia/internal/AdPlacementReporter;I)V
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, Lcom/millennialmedia/NativeAd;->n:Z

    if-nez v0, :cond_0

    .line 966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/NativeAd;->n:Z

    .line 968
    invoke-static {p1, p2}, Lcom/millennialmedia/internal/AdPlacementReporter;->setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    .line 969
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->h:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getImpressionTrackers()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/NativeAd;->a(Ljava/util/List;)V

    .line 971
    :cond_0
    return-void
.end method

.method private a(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V
    .locals 1

    .prologue
    .line 978
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    .line 982
    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->setClicked(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 987
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickTrackerUrls:Ljava/util/List;

    if-nez v0, :cond_1

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->h:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getClickTrackers()Ljava/util/List;

    move-result-object v0

    .line 993
    :goto_0
    invoke-direct {p0, v0}, Lcom/millennialmedia/NativeAd;->a(Ljava/util/List;)V

    .line 994
    return-void

    .line 990
    :cond_1
    iget-object v0, p2, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickTrackerUrls:Ljava/util/List;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1417
    if-nez v0, :cond_0

    .line 1418
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1419
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->q:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1423
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 788
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 789
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 790
    if-eqz v0, :cond_1

    .line 791
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 792
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    .line 793
    if-nez v1, :cond_0

    .line 791
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 797
    :cond_0
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 798
    iget-object v5, v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    invoke-direct {p0, v4, p2, v2, v1}, Lcom/millennialmedia/NativeAd;->a(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    .line 801
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 916
    if-nez p2, :cond_1

    .line 917
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action, url is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 925
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 926
    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->e()V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 999
    if-eqz p1, :cond_0

    .line 1000
    new-instance v0, Lcom/millennialmedia/NativeAd$5;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/NativeAd$5;-><init>(Lcom/millennialmedia/NativeAd;Ljava/util/List;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1013
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1679
    if-nez p1, :cond_1

    .line 1705
    :cond_0
    return-void

    .line 1683
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1686
    if-eqz p5, :cond_2

    .line 1687
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v1

    .line 1692
    :goto_0
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 1693
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1695
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_3

    .line 1696
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1697
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1698
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    invoke-direct {p0, v1, p3, v4, v2}, Lcom/millennialmedia/NativeAd;->a(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    .line 1692
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 1689
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v3, v1

    goto :goto_0

    .line 1701
    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1702
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private a(Landroid/view/View;ZZ)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 1550
    const/4 v3, 0x0

    .line 1551
    const/4 v2, 0x1

    .line 1555
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1557
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->o:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->componentDefinitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1560
    iget-object v5, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1563
    :cond_0
    const-string v0, "body"

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/NativeAd;->a(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1564
    const-string v0, "body"

    .line 1565
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1567
    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v5, v0, :cond_1

    .line 1568
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v2, "Layout does not contain the required number of Views for the body component."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const/4 v0, 0x0

    move v2, v0

    .line 1572
    :cond_1
    const-string v0, "callToAction"

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/NativeAd;->a(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1573
    const-string v0, "callToAction"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1574
    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v5, v0, :cond_2

    .line 1575
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v2, "Layout does not contain the required number of Views for the \'Call To Action\' component."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const/4 v2, 0x0

    .line 1579
    :cond_2
    const-string v0, "disclaimer"

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/NativeAd;->a(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1580
    const-string v0, "disclaimer"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1581
    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v5, v0, :cond_3

    .line 1582
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v2, "Layout does not contain the required number of Views for the Disclaimer component."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const/4 v2, 0x0

    .line 1586
    :cond_3
    const-string v0, "iconImage"

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/NativeAd;->b(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1587
    const-string v0, "iconImage"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1588
    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v5, v0, :cond_4

    .line 1589
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v2, "Layout does not contain the required number of Views for the \'Icon Image\' component."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const/4 v2, 0x0

    .line 1593
    :cond_4
    const-string v0, "mainImage"

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/NativeAd;->b(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 1594
    const-string v0, "mainImage"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1595
    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v5, v0, :cond_5

    .line 1596
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v2, "Layout does not contain the required number of Views for the \'Main Image\' component."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    const/4 v2, 0x0

    .line 1600
    :cond_5
    const-string v0, "rating"

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/NativeAd;->a(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 1601
    const-string v0, "rating"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1602
    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v5, v0, :cond_6

    .line 1603
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v2, "Layout does not contain the required number of Views for the Rating component."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const/4 v2, 0x0

    .line 1607
    :cond_6
    const-string v0, "title"

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/NativeAd;->a(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 1608
    const-string v0, "title"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1609
    if-eqz v0, :cond_7

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v4, v0, :cond_7

    .line 1610
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v2, "Layout does not contain the required number of Views for the Title component."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    const/4 v2, 0x0

    .line 1614
    :cond_7
    if-eqz v2, :cond_b

    .line 1616
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_a

    .line 1617
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_a

    .line 1618
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_a

    .line 1619
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_a

    .line 1620
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_a

    .line 1621
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_a

    .line 1622
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_a

    const/4 v0, 0x1

    .line 1624
    :goto_1
    if-nez v0, :cond_8

    if-nez p2, :cond_c

    .line 1626
    :cond_8
    const-string v2, "body"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->BODY:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->r:Ljava/util/List;

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->b(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1628
    const-string v2, "disclaimer"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->DISCLAIMER:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->s:Ljava/util/List;

    move-object v0, p0

    move-object v1, v7

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->b(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1631
    const-string v2, "rating"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->RATING:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->t:Ljava/util/List;

    move-object v0, p0

    move-object v1, v10

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->b(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1632
    const-string v2, "title"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->TITLE:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->u:Ljava/util/List;

    move-object v0, p0

    move-object v1, v11

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->b(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1634
    const-string v2, "callToAction"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->v:Ljava/util/List;

    move-object v0, p0

    move-object v1, v6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->b(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1637
    const-string v2, "iconImage"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->w:Ljava/util/List;

    move-object v0, p0

    move-object v1, v8

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->a(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1640
    const-string v2, "mainImage"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->x:Ljava/util/List;

    move-object v0, p0

    move-object v1, v9

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd;->a(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/NativeAd;->i:Z

    .line 1644
    const/4 v0, 0x1

    .line 1648
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->m:Lcom/millennialmedia/NativeAd$ImpressionReporter;

    if-eqz v1, :cond_9

    .line 1649
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->m:Lcom/millennialmedia/NativeAd$ImpressionReporter;

    invoke-virtual {v1}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->cancel()V

    .line 1651
    :cond_9
    new-instance v1, Lcom/millennialmedia/NativeAd$ImpressionReporter;

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->h:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-static {v2}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/internal/adadapters/AdAdapter;)J

    move-result-wide v2

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/millennialmedia/NativeAd$ImpressionReporter;-><init>(Lcom/millennialmedia/NativeAd;Landroid/view/View;J)V

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->m:Lcom/millennialmedia/NativeAd$ImpressionReporter;

    .line 1652
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->m:Lcom/millennialmedia/NativeAd$ImpressionReporter;

    invoke-virtual {v1}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->a()V

    .line 1659
    :goto_2
    return v0

    .line 1622
    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    .line 1656
    :cond_b
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Layout was not updated because it did not contain the required Views."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move v0, v3

    goto :goto_2
.end method

.method static synthetic a(Lcom/millennialmedia/NativeAd;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/millennialmedia/NativeAd;->n:Z

    return v0
.end method

.method static synthetic a(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/adadapters/NativeAdapter;)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/internal/adadapters/NativeAdapter;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/millennialmedia/NativeAd;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/millennialmedia/NativeAd;->n:Z

    return p1
.end method

.method private a(Lcom/millennialmedia/internal/adadapters/NativeAdapter;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 687
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getType()Ljava/lang/String;

    move-result-object v1

    .line 688
    if-nez v1, :cond_0

    .line 689
    sget-object v1, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v2, "Unable to load components, native type is not set"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_0
    return v0

    .line 695
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->p:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 696
    sget-object v2, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load components, native type <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "> is not a requested native type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :cond_1
    invoke-static {v1}, Lcom/millennialmedia/internal/Handshake;->getNativeTypeDefinition(Ljava/lang/String;)Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->o:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    .line 703
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->o:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    if-nez v2, :cond_2

    .line 704
    sget-object v2, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load components, unable to find list of required components for native type <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_2
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getTitleList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->u:Ljava/util/List;

    .line 713
    const-string v0, "title"

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->TITLE:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->u:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3}, Lcom/millennialmedia/NativeAd;->a(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 716
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getBodyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->r:Ljava/util/List;

    .line 717
    const-string v0, "body"

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->BODY:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->r:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3}, Lcom/millennialmedia/NativeAd;->a(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 720
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getIconImageList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->w:Ljava/util/List;

    .line 721
    const-string v0, "iconImage"

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->w:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3}, Lcom/millennialmedia/NativeAd;->b(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 724
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getMainImageList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->x:Ljava/util/List;

    .line 725
    const-string v0, "mainImage"

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->x:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3}, Lcom/millennialmedia/NativeAd;->b(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 728
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getCallToActionList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->v:Ljava/util/List;

    .line 729
    const-string v0, "callToAction"

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->v:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3}, Lcom/millennialmedia/NativeAd;->c(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 732
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getRatingList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->t:Ljava/util/List;

    .line 733
    const-string v0, "rating"

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->RATING:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->t:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3}, Lcom/millennialmedia/NativeAd;->a(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 736
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getDisclaimerList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->s:Ljava/util/List;

    .line 739
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    new-instance v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    .line 741
    const-string v2, "Sponsored"

    iput-object v2, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    .line 743
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_3
    const-string v0, "disclaimer"

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->DISCLAIMER:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->s:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3}, Lcom/millennialmedia/NativeAd;->a(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 748
    invoke-direct {p0, v1}, Lcom/millennialmedia/NativeAd;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 754
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 756
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->o:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->componentDefinitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 759
    if-eqz v0, :cond_2

    .line 760
    iget v6, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->adverstiserRequired:I

    .line 762
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    iget-object v7, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 763
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v6, :cond_0

    .line 764
    :cond_1
    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 768
    :cond_2
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Missing configuration data for native type: %s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 781
    :goto_1
    return v0

    .line 774
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 775
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load required components <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "> for native type <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 778
    goto :goto_1

    :cond_4
    move v0, v3

    .line 781
    goto :goto_1
.end method

.method static synthetic b(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method private b(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 1777
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1778
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v0, 0x384

    if-gt v1, v0, :cond_1

    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1781
    if-eqz v0, :cond_1

    .line 1782
    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 1783
    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1778
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1785
    :cond_0
    new-instance v1, Lcom/millennialmedia/MMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected View with tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to be a ImageView."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1794
    :cond_1
    return-object v2
.end method

.method private b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1428
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1430
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->o:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->componentDefinitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1435
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->q:Ljava/util/Map;

    iget-object v5, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1436
    if-eqz v1, :cond_3

    .line 1437
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 1440
    :goto_1
    iget v5, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v1, v5, :cond_0

    .line 1441
    const-string v5, "Component: %s, required: %d, accessed: %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v7, 0x1

    iget v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    .line 1443
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    .line 1442
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1441
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1447
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to validate that all required native components have been accessed:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1449
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1451
    sget-object v1, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    new-instance v1, Lcom/millennialmedia/MMException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1454
    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->e(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private b(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4

    .prologue
    .line 1812
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->d()V

    .line 1814
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getNativeExpirationDuration()I

    move-result v0

    .line 1815
    if-lez v0, :cond_0

    .line 1816
    new-instance v1, Lcom/millennialmedia/NativeAd$ExpirationRunnable;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/NativeAd$ExpirationRunnable;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    int-to-long v2, v0

    .line 1817
    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->l:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 1819
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 813
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 814
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 815
    if-eqz v0, :cond_1

    .line 816
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 817
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    .line 818
    if-nez v1, :cond_0

    .line 816
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 822
    :cond_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 824
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 825
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 826
    invoke-direct {p0, v5, p2, v2, v1}, Lcom/millennialmedia/NativeAd;->a(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    .line 828
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    return-void
.end method

.method private b(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 1724
    if-nez p1, :cond_1

    .line 1750
    :cond_0
    return-void

    .line 1728
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1731
    if-eqz p5, :cond_2

    .line 1732
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v1

    .line 1737
    :goto_0
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 1738
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1740
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_3

    .line 1741
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1742
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1743
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    invoke-direct {p0, v1, p3, v4, v2}, Lcom/millennialmedia/NativeAd;->a(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    .line 1737
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 1734
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v3, v1

    goto :goto_0

    .line 1746
    :cond_3
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1747
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method static synthetic c(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->j:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->j:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->k:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    .line 1805
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->k:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 1807
    :cond_1
    return-void
.end method

.method private c(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3

    .prologue
    .line 1832
    monitor-enter p0

    .line 1833
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1834
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1835
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "onAdAdapterLoadFailed called but load state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    :cond_0
    monitor-exit p0

    .line 1851
    :goto_0
    return-void

    .line 1840
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1841
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1842
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdAdapterLoadFailed called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 1848
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1847
    :cond_3
    :try_start_1
    const-string v0, "ad_adapter_load_failed"

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    .line 1848
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1850
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 840
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 841
    if-eqz v0, :cond_1

    .line 842
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 843
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    .line 844
    if-nez v1, :cond_0

    .line 842
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 848
    :cond_0
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 849
    iget-object v5, v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 850
    invoke-direct {p0, v4, p2, v2, v1}, Lcom/millennialmedia/NativeAd;->a(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    .line 852
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    return-void
.end method

.method public static createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/NativeAd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/millennialmedia/NativeAd;->createInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/millennialmedia/NativeAd;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/millennialmedia/NativeAd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-static {}, Lcom/millennialmedia/MMSDK;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/millennialmedia/MMInitializationException;

    const-string v1, "Unable to create instance, SDK must be initialized first"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_0
    new-instance v0, Lcom/millennialmedia/NativeAd;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/NativeAd;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic d(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->l:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->l:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 1827
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private d(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 5

    .prologue
    .line 1856
    monitor-enter p0

    .line 1857
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1858
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1859
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "onLoadSucceeded called but load state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    :cond_0
    monitor-exit p0

    .line 1900
    :cond_1
    :goto_0
    return-void

    .line 1864
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1865
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1866
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadSucceeded called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1877
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1871
    :cond_4
    :try_start_1
    const-string v0, "loaded"

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    .line 1873
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Load succeeded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->c()V

    .line 1875
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->b(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 1876
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 1877
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1881
    :try_start_2
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->h:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPostLoaded"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/millennialmedia/NativeAd;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1882
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->h:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1890
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->g:Lcom/millennialmedia/NativeAd$NativeListener;

    .line 1891
    if-eqz v0, :cond_1

    .line 1892
    new-instance v1, Lcom/millennialmedia/NativeAd$7;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/NativeAd$7;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1883
    :catch_0
    move-exception v0

    .line 1884
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1885
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Could not find method <onPostLoaded> in adAdapter"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/adadapters/NativeAdapter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->h:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 1947
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Ad left application"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->g:Lcom/millennialmedia/NativeAd$NativeListener;

    .line 1951
    if-eqz v0, :cond_0

    .line 1952
    new-instance v1, Lcom/millennialmedia/NativeAd$9;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/NativeAd$9;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    .line 1960
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->c(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private e(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3

    .prologue
    .line 1905
    monitor-enter p0

    .line 1906
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1907
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1908
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "onLoadFailed called but load state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    :cond_0
    monitor-exit p0

    .line 1942
    :cond_1
    :goto_0
    return-void

    .line 1913
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    const-string v1, "loading_play_list"

    .line 1914
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1915
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1916
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFailed called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1929
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1921
    :cond_4
    :try_start_1
    const-string v0, "load_failed"

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    .line 1923
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load failed for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". If this warning persists please check your placement configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->c()V

    .line 1928
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 1929
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1932
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->g:Lcom/millennialmedia/NativeAd$NativeListener;

    .line 1933
    if-eqz v0, :cond_1

    .line 1934
    new-instance v1, Lcom/millennialmedia/NativeAd$8;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/NativeAd$8;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/NativeAd$NativeListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->g:Lcom/millennialmedia/NativeAd$NativeListener;

    return-object v0
.end method

.method static synthetic f(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->d(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private f(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3

    .prologue
    .line 1965
    monitor-enter p0

    .line 1966
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1967
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "onExpired called but load state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    :cond_0
    monitor-exit p0

    .line 1996
    :cond_1
    :goto_0
    return-void

    .line 1973
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1974
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1975
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExpired called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1981
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1980
    :cond_4
    :try_start_1
    const-string v0, "expired"

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    .line 1981
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1983
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Ad expired"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->g:Lcom/millennialmedia/NativeAd$NativeListener;

    .line 1987
    if-eqz v0, :cond_1

    .line 1988
    new-instance v1, Lcom/millennialmedia/NativeAd$10;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/NativeAd$10;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public fireCallToActionClicked()V
    .locals 2

    .prologue
    .line 1246
    sget-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/NativeAd$ComponentName;I)Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    move-result-object v0

    .line 1247
    if-nez v0, :cond_0

    .line 1248
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to fire clicked, found component info is null"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :goto_0
    return-void

    .line 1253
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    goto :goto_0
.end method

.method public fireImpression()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Native ad is not in a loaded state, you must load before showing"

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/Utils;->logAndFireMMException(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :goto_0
    return-void

    .line 948
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/NativeAd;->i:Z

    if-eqz v0, :cond_1

    .line 949
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Impression firing is disabled when using a managed layout."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 954
    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->b()V

    .line 956
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "All required components have been accessed, firing impression"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    goto :goto_0
.end method

.method public getBody()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1073
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getBody(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getBody(I)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to get body, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const/4 v0, 0x0

    .line 1091
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "body"

    const-string v1, "body"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getCallToActionButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getCallToActionButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getCallToActionButton(I)Landroid/widget/Button;
    .locals 2

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to get call to action button, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const/4 v0, 0x0

    .line 1178
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "callToAction"

    const-string v1, "call to action"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    goto :goto_0
.end method

.method public getCallToActionUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1265
    sget-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/NativeAd$ComponentName;I)Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    move-result-object v0

    .line 1266
    if-nez v0, :cond_0

    .line 1267
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to get call to action url, found component info is not for a call to action component"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    const/4 v0, 0x0

    .line 1273
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisclaimer()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getDisclaimer(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getDisclaimer(I)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1230
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1231
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to get disclaimer, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const/4 v0, 0x0

    .line 1236
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "disclaimer"

    const-string v1, "disclaimer"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getIconImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getIconImage(I)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getIconImage(I)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to get icon image, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const/4 v0, 0x0

    .line 1120
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "iconImage"

    const-string v1, "icon image"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getImageUrl(Lcom/millennialmedia/NativeAd$ComponentName;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1285
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/NativeAd$ComponentName;I)Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    move-result-object v0

    .line 1286
    instance-of v1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    if-nez v1, :cond_0

    .line 1287
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to get image url, found component info is not for a image component"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const/4 v0, 0x0

    .line 1292
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmapUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMainImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getMainImage(I)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getMainImage(I)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to get main image, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const/4 v0, 0x0

    .line 1149
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mainImage"

    const-string v1, "main image"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getNativeType()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1023
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1024
    sget-object v1, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v2, "Unable to get native type, ad not loaded"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_0
    :goto_0
    return-object v0

    .line 1029
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->h:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    if-eqz v1, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->o:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->typeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRating()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getRating(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getRating(I)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1201
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1202
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to get rating, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const/4 v0, 0x0

    .line 1207
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "rating"

    const-string v1, "rating"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1044
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getTitle(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(I)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1057
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to get title, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const/4 v0, 0x0

    .line 1062
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "title"

    const-string v1, "title"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public hasExpired()Z
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    const-string v1, "expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public inflateLayout(Landroid/content/Context;[I)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1505
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1506
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "NativeAd.inflateLayout must be called on the UI thread."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    :goto_0
    return-object v4

    .line 1511
    :cond_0
    if-nez p1, :cond_1

    .line 1512
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to inflate a layout because the provided Context is null."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1517
    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    .line 1518
    :cond_2
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to inflate a layout because the layoutIds are null or empty."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1523
    :cond_3
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1524
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Cannot inflate a layout. The NativeAd is not loaded."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1529
    :cond_4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    move v0, v1

    .line 1532
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_7

    .line 1533
    aget v2, p2, v0

    invoke-virtual {v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1534
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    const/4 v2, 0x1

    .line 1536
    :goto_2
    invoke-direct {p0, v3, v2, v1}, Lcom/millennialmedia/NativeAd;->a(Landroid/view/View;ZZ)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v3

    :goto_3
    move-object v4, v0

    .line 1543
    goto :goto_0

    :cond_5
    move v2, v1

    .line 1534
    goto :goto_2

    .line 1532
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move-object v0, v4

    goto :goto_3
.end method

.method public invokeDefaultAction()V
    .locals 2

    .prologue
    .line 898
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 899
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to invoke default action, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->h:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    .line 910
    const-string v0, "default"

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->h:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getDefaultAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/NativeAd;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load(Landroid/content/Context;Lcom/millennialmedia/NativeAd$NativeAdMetadata;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 450
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading playlist for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    if-nez p1, :cond_0

    .line 453
    new-instance v0, Lcom/millennialmedia/MMException;

    const-string v1, "Unable to load native, specified context cannot be null"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->f:Ljava/lang/ref/WeakReference;

    .line 457
    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    const-string v1, "idle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    const-string v1, "load_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    const-string v1, "loaded"

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    monitor-exit p0

    .line 543
    :goto_0
    return-void

    .line 464
    :cond_1
    const-string v0, "loading_play_list"

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->a:Ljava/lang/String;

    .line 465
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->b:Lcom/millennialmedia/internal/PlayList;

    .line 469
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 470
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/NativeAd;->i:Z

    .line 474
    if-nez p2, :cond_2

    .line 475
    new-instance p2, Lcom/millennialmedia/NativeAd$NativeAdMetadata;

    invoke-direct {p2}, Lcom/millennialmedia/NativeAd$NativeAdMetadata;-><init>()V

    .line 478
    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->getRequestState()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->j:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v1, :cond_3

    .line 482
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->j:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 485
    :cond_3
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getNativeTimeout()I

    move-result v1

    .line 489
    new-instance v2, Lcom/millennialmedia/NativeAd$1;

    invoke-direct {v2, p0, v0}, Lcom/millennialmedia/NativeAd$1;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->j:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 502
    invoke-virtual {p2, p0}, Lcom/millennialmedia/NativeAd$NativeAdMetadata;->toMap(Lcom/millennialmedia/internal/AdPlacement;)Ljava/util/Map;

    move-result-object v2

    .line 503
    const-string v3, "nativeTypes"

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->p:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-virtual {p2}, Lcom/millennialmedia/NativeAd$NativeAdMetadata;->getImpressionGroup()Ljava/lang/String;

    move-result-object v3

    .line 506
    new-instance v4, Lcom/millennialmedia/NativeAd$2;

    invoke-direct {v4, p0, v0, v3}, Lcom/millennialmedia/NativeAd$2;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Ljava/lang/String;)V

    invoke-static {v2, v4, v1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;I)V

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/millennialmedia/NativeAd$NativeListener;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->g:Lcom/millennialmedia/NativeAd$NativeListener;

    .line 868
    return-void
.end method

.method public updateLayout(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 1467
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1468
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "NativeAd.updateLayout must be called on the UI thread."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    :goto_0
    return-void

    .line 1473
    :cond_0
    if-nez p1, :cond_1

    .line 1474
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Unable to updated; the provided layout was null."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1479
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1480
    sget-object v0, Lcom/millennialmedia/NativeAd;->e:Ljava/lang/String;

    const-string v1, "Cannot update the layout. The NativeAd is not loaded."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1485
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->a(Landroid/view/View;ZZ)Z

    goto :goto_0
.end method
