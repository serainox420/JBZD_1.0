.class public Lcom/inmobi/re/controller/JSUtilityController;
.super Lcom/inmobi/re/controller/JSController;
.source "JSUtilityController.java"


# static fields
.field public static calendarUntiFormats:[Ljava/text/SimpleDateFormat;

.field public static formats:[Ljava/text/SimpleDateFormat;


# instance fields
.field a:Landroid/app/DownloadManager;

.field b:Ljava/lang/Object;

.field c:I

.field private d:Lcom/inmobi/re/controller/JSDisplayController;

.field private e:Z

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/inmobi/re/container/mraidimpl/AudioTriggerCallback;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'hh:mmZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssz"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmssZ"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmm"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMM"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/re/controller/JSUtilityController;->formats:[Ljava/text/SimpleDateFormat;

    .line 82
    new-array v0, v8, [Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/inmobi/re/controller/JSUtilityController;->calendarUntiFormats:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/inmobi/re/controller/JSController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/content/Context;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->a:Landroid/app/DownloadManager;

    .line 130
    iput-boolean v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->e:Z

    .line 372
    iput v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->c:I

    .line 1045
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->f:Ljava/util/Map;

    .line 1465
    new-instance v0, Lcom/inmobi/re/controller/JSUtilityController$8;

    invoke-direct {v0, p0}, Lcom/inmobi/re/controller/JSUtilityController$8;-><init>(Lcom/inmobi/re/controller/JSUtilityController;)V

    iput-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->g:Lcom/inmobi/re/container/mraidimpl/AudioTriggerCallback;

    .line 1477
    iput-boolean v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->h:Z

    iput-boolean v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->i:Z

    .line 113
    new-instance v0, Lcom/inmobi/re/controller/JSDisplayController;

    invoke-direct {v0, p1, p2}, Lcom/inmobi/re/controller/JSDisplayController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->d:Lcom/inmobi/re/controller/JSDisplayController;

    .line 120
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->d:Lcom/inmobi/re/controller/JSDisplayController;

    const-string v1, "displayController"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private a()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 339
    .line 340
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.calendar/events"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 353
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 355
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 357
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    if-eqz v1, :cond_1

    .line 360
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 363
    :goto_1
    return v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://calendar/events"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method static synthetic a(Lcom/inmobi/re/controller/JSUtilityController;)I
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/inmobi/re/controller/JSUtilityController;->a()I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 768
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 770
    :goto_0
    return p2

    .line 769
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    const/4 p1, 0x0

    .line 293
    :cond_0
    :goto_0
    return-object p1

    .line 287
    :cond_1
    const-string v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private b()[I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 960
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 962
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 965
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v4}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v2

    .line 966
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :goto_0
    return-object v1

    .line 967
    :catch_0
    move-exception v0

    .line 968
    aput v5, v1, v6

    aput v5, v1, v5

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 1496
    iget-boolean v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->i:Z

    if-eqz v0, :cond_0

    .line 1497
    invoke-virtual {p0}, Lcom/inmobi/re/controller/JSUtilityController;->registerMicListener()V

    .line 1498
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 597
    new-instance v0, Lcom/inmobi/re/controller/JSUtilityController$3;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/re/controller/JSUtilityController$3;-><init>(Lcom/inmobi/re/controller/JSUtilityController;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController$3;->start()V

    .line 623
    return-void
.end method

.method public static convertDateString(Ljava/lang/String;)Ljava/util/GregorianCalendar;
    .locals 5

    .prologue
    .line 534
    sget-object v2, Lcom/inmobi/re/controller/JSUtilityController;->formats:[Ljava/text/SimpleDateFormat;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 536
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 537
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 538
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 539
    check-cast v0, Ljava/util/GregorianCalendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_1
    return-object v0

    .line 541
    :catch_0
    move-exception v0

    .line 534
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 547
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()V
    .locals 1

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->h:Z

    iput-boolean v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->i:Z

    .line 1502
    invoke-virtual {p0}, Lcom/inmobi/re/controller/JSUtilityController;->unRegisterMicListener()V

    .line 1503
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asyncPing(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 582
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 584
    :try_start_0
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSUtilityController-> asyncPing: url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Invalid url"

    const-string v2, "asyncPing"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-direct {p0, p1}, Lcom/inmobi/re/controller/JSUtilityController;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancelSaveContent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->cancelSaveContent(Ljava/lang/String;)V

    .line 1541
    return-void
.end method

.method public closeVideo(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 798
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 799
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSUtilityController-> closeVideo: id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->closeVideo(Ljava/lang/String;)V

    .line 802
    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 378
    :try_start_0
    const-string v2, "android.permission.READ_CALENDAR"

    invoke-virtual {p0, v2}, Lcom/inmobi/re/controller/JSUtilityController;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {p0, v2}, Lcom/inmobi/re/controller/JSUtilityController;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/inmobi/re/controller/JSUtilityController;->a()I

    move-result v2

    iput v2, p0, Lcom/inmobi/re/controller/JSUtilityController;->c:I

    .line 381
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/metric/EventLog;

    new-instance v4, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 382
    const-string v2, "[InMobi]-[RE]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSUtilityController-> createEvent: date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v2, "calendar"

    invoke-virtual {p0, v2}, Lcom/inmobi/re/controller/JSUtilityController;->supports(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 386
    const-string v2, "[InMobi]-[RE]-4.5.5"

    const-string v3, "createCalendarEvent called even if it is not supported"

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v3, "createCalendarEvent called even if it is not supported"

    const-string v4, "createCalendarEvent"

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    invoke-static {p2}, Lcom/inmobi/re/controller/JSUtilityController;->convertDateString(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 395
    invoke-static {p3}, Lcom/inmobi/re/controller/JSUtilityController;->convertDateString(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v3

    .line 396
    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    .line 397
    :cond_3
    const-string v2, "[InMobi]-[RE]-4.5.5"

    const-string v3, "exception"

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v3, "Date format is incorrect"

    const-string v4, "createCalendarEvent"

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 525
    :catch_0
    move-exception v2

    .line 527
    const-string v3, "[InMobi]-[RE]-4.5.5"

    const-string v4, "Error creating reminder event"

    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 404
    :cond_4
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v5}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    const-string v5, "extra_browser_type"

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    new-instance v5, Lcom/inmobi/re/controller/JSUtilityController$2;

    move-object/from16 v0, p10

    invoke-direct {v5, p0, p7, v0, p2}, Lcom/inmobi/re/controller/JSUtilityController$2;-><init>(Lcom/inmobi/re/controller/JSUtilityController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/inmobi/androidsdk/IMBrowserActivity;->generateId(Lcom/inmobi/re/controller/util/StartActivityForResultCallback;)I

    move-result v5

    .line 507
    const-string v6, "id"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    const-string v5, "eventId"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v5, "action"

    const-string v6, "createCalendarEvent"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v5, "description"

    invoke-virtual {v4, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v5, "summary"

    invoke-virtual {v4, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string v5, "location"

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string v5, "start"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 514
    const-string v2, "end"

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 515
    const-string v2, "status"

    invoke-virtual {v4, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v2, "transparency"

    move-object/from16 v0, p8

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const-string v2, "recurrence"

    move-object/from16 v0, p9

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    if-eqz p10, :cond_5

    const-string v2, ""

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 520
    const-string v2, "hasAlarm"

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    :cond_5
    iget-object v2, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 523
    iget-object v2, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, v2, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v2, :cond_1

    .line 524
    iget-object v2, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, v2, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v2}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onLeaveApplication()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getAudioVolume(Ljava/lang/String;)I
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 691
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 692
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> getAudioVolume: "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->getAudioVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 912
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 913
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> getCurrentPosition"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mutexcPos:Ljava/lang/Object;

    monitor-enter v1

    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->sendToCPHandler()V

    .line 917
    :goto_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mutexcPos:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 920
    :catch_0
    move-exception v0

    .line 921
    :try_start_2
    const-string v2, "[InMobi]-[RE]-4.5.5"

    const-string v3, "mutexcPos failed "

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 925
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 926
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 927
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->curPosition:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPosition()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 938
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 939
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> getDefaultPosition"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mutexdPos:Ljava/lang/Object;

    monitor-enter v1

    .line 942
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->sendToDPHandler()V

    .line 943
    :goto_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mutexdPos:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 946
    :catch_0
    move-exception v0

    .line 947
    :try_start_2
    const-string v2, "[InMobi]-[RE]-4.5.5"

    const-string v3, "mutexdPos failed "

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 952
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 951
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 952
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 953
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mutexdPassed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, v2, Lcom/inmobi/re/container/IMWebView;->defPosition:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->defPosition:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGalleryImage()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1310
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    invoke-direct {v1, v2, v4}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 1311
    const-string v0, "getGalleryImage"

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/JSUtilityController;->supports(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1312
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "getGalleryImage called even if it is not supported"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    :cond_0
    :goto_0
    return-object v4

    .line 1316
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1317
    const-string v1, "extra_browser_type"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1320
    new-instance v1, Lcom/inmobi/re/controller/JSUtilityController$6;

    invoke-direct {v1, p0}, Lcom/inmobi/re/controller/JSUtilityController$6;-><init>(Lcom/inmobi/re/controller/JSUtilityController;)V

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->generateId(Lcom/inmobi/re/controller/util/StartActivityForResultCallback;)I

    move-result v1

    .line 1346
    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1347
    const-string v1, "action"

    const-string v2, "getGalleryImage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1348
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1349
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onLeaveApplication()V

    goto :goto_0
.end method

.method public getMaxSize()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 981
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 982
    invoke-direct {p0}, Lcom/inmobi/re/controller/JSUtilityController;->b()[I

    move-result-object v0

    .line 983
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 985
    :try_start_0
    const-string v2, "width"

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 986
    const-string v2, "height"

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 987
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getMicIntensity()D
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 707
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x33

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 708
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getLastGoodKnownMicValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 883
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 884
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> getScreenSize"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 887
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 889
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 891
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 892
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v1

    float-to-int v1, v1

    .line 894
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 896
    :try_start_0
    const-string v3, "width"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 897
    const-string v0, "height"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 898
    :catch_0
    move-exception v0

    .line 899
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "Failed to get screen size"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1300
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoVolume(Ljava/lang/String;)I
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 862
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 863
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> getVideoVolume: "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->getVideoVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hideVideo(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 806
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 807
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSUtilityController-> hideVideo: id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->hideVideo(Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method public incentCompleted(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1549
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1550
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1551
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1553
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1556
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1557
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1558
    :catch_0
    move-exception v0

    .line 1559
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->incentCompleted(Ljava/util/HashMap;)V

    .line 1570
    :goto_1
    return-void

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v2}, Lcom/inmobi/re/container/IMWebView;->incentCompleted(Ljava/util/HashMap;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1565
    :catch_1
    move-exception v0

    .line 1566
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSON error"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v5}, Lcom/inmobi/re/container/IMWebView;->incentCompleted(Ljava/util/HashMap;)V

    goto :goto_1
.end method

.method public isAudioMuted(Ljava/lang/String;)Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 675
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 676
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> isAudioMuted: "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->isAudioMuted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVideoMuted(Ljava/lang/String;)Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 846
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x2b

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 847
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> isVideoMuted: "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->isVideoMuted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 574
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Log Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public makeCall(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 304
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 305
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSUtilityController-> makeCall: number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/re/controller/JSUtilityController;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Bad Phone Number"

    const-string v2, "makeCall"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 314
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 316
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->fireOnLeaveApplication()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Exception in making call "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Exception in making call"

    const-string v2, "makeCall"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public muteAudio(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 659
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 660
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> muteAudio: "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->muteAudio(Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public muteVideo(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 822
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 823
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> muteVideo: "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->muteVideo(Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method public onUserInteraction(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1514
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1515
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1516
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1518
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1521
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1522
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1523
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1527
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v2}, Lcom/inmobi/re/container/IMWebView;->userInteraction(Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1530
    :goto_1
    return-void

    .line 1528
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public openExternal(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 870
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 871
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSUtilityController-> openExternal: url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->openExternal(Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method public pauseAudio(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 782
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 783
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSUtilityController-> pauseAudio: id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->pauseAudio(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method public pauseVideo(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 790
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 791
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSUtilityController-> pauseVideo: id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->pauseVideo(Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 647
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 648
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAudio: url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " autoPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " controls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stopStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/inmobi/re/container/IMWebView;->playAudio(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public playVideo(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 739
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    new-instance v3, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 740
    const-string v1, "[InMobi]-[RE]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSUtilityController-> playVideo: url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audioMuted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " autoPlay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " controls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stopStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    new-instance v7, Lcom/inmobi/re/controller/JSController$Dimensions;

    invoke-direct {v7}, Lcom/inmobi/re/controller/JSController$Dimensions;-><init>()V

    .line 749
    const v1, -0x1869f

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v1}, Lcom/inmobi/re/controller/JSUtilityController;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    .line 750
    const v1, -0x1869f

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/inmobi/re/controller/JSUtilityController;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    .line 751
    const v1, -0x1869f

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/inmobi/re/controller/JSUtilityController;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    .line 752
    const v1, -0x1869f

    move-object/from16 v0, p9

    invoke-direct {p0, v0, v1}, Lcom/inmobi/re/controller/JSUtilityController;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    .line 754
    iget v1, v7, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    const v2, -0x1869f

    if-ne v1, v2, :cond_0

    iget v1, v7, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    const v2, -0x1869f

    if-ne v1, v2, :cond_0

    .line 755
    invoke-direct {p0}, Lcom/inmobi/re/controller/JSUtilityController;->b()[I

    move-result-object v1

    .line 756
    const/4 v2, 0x0

    iput v2, v7, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    .line 757
    const/4 v2, 0x0

    iput v2, v7, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    .line 758
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v7, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    .line 759
    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v7, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    .line 762
    :cond_0
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    invoke-virtual/range {v1 .. v10}, Lcom/inmobi/re/container/IMWebView;->playVideo(Ljava/lang/String;ZZZZLcom/inmobi/re/controller/JSController$Dimensions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    return-void
.end method

.method public postToSocial(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1004
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postToSocial."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/JSUtilityController;->supports(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Social type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "postToSocial"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    if-nez p2, :cond_4

    .line 1012
    const-string v0, ""

    .line 1013
    :goto_1
    if-nez p3, :cond_2

    .line 1014
    const-string v0, ""

    .line 1015
    :cond_2
    if-nez p4, :cond_3

    .line 1016
    const-string p4, ""

    .line 1018
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1019
    new-instance v2, Lcom/inmobi/re/controller/JSUtilityController$4;

    invoke-direct {v2, p0}, Lcom/inmobi/re/controller/JSUtilityController$4;-><init>(Lcom/inmobi/re/controller/JSUtilityController;)V

    invoke-static {v2}, Lcom/inmobi/androidsdk/IMBrowserActivity;->generateId(Lcom/inmobi/re/controller/util/StartActivityForResultCallback;)I

    move-result v2

    .line 1026
    const-string v3, "extra_browser_type"

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1029
    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    const-string v2, "action"

    const-string v3, "postToSocial"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    const-string v2, "socialType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1033
    const-string v2, "text"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    const-string v0, "link"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    const-string v0, "image"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1038
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onLeaveApplication()V

    goto :goto_0

    :cond_4
    move-object v0, p2

    goto :goto_1
.end method

.method public registerBroadcastListener()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/inmobi/re/controller/JSUtilityController;->c()V

    .line 142
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->a:Landroid/app/DownloadManager;

    if-nez v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->a:Landroid/app/DownloadManager;

    .line 150
    :cond_2
    new-instance v0, Lcom/inmobi/re/controller/JSUtilityController$1;

    invoke-direct {v0, p0}, Lcom/inmobi/re/controller/JSUtilityController$1;-><init>(Lcom/inmobi/re/controller/JSUtilityController;)V

    iput-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->b:Ljava/lang/Object;

    .line 177
    iget-boolean v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->e:Z

    if-nez v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "JSUtilityController-> registerBroadcastListener. Unable to register download listener"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 186
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->b:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public registerMicListener()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1481
    iget-boolean v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->h:Z

    if-eqz v0, :cond_0

    .line 1485
    :goto_0
    return-void

    .line 1483
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->h:Z

    .line 1484
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->g:Lcom/inmobi/re/container/mraidimpl/AudioTriggerCallback;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->addEventListener(Lcom/inmobi/re/container/mraidimpl/AudioTriggerCallback;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->d:Lcom/inmobi/re/controller/JSDisplayController;

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->d:Lcom/inmobi/re/controller/JSDisplayController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSDisplayController;->reset()V

    .line 1508
    :cond_0
    return-void
.end method

.method public saveContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->saveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    return-void
.end method

.method public seekAudio(Ljava/lang/String;I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 699
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 700
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> seekAudio: "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->seekAudio(Ljava/lang/String;I)V

    .line 703
    return-void
.end method

.method public seekVideo(Ljava/lang/String;I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 838
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 839
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> seekVideo: "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->seekVideo(Ljava/lang/String;I)V

    .line 842
    return-void
.end method

.method public sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 252
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSUtilityController-> sendMail: recipient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    const-string v1, "Choose the Email Client."

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 266
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->fireOnLeaveApplication()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Exception in sending mail "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Exception in sending mail"

    const-string v2, "sendMail"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 223
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSUtilityController-> sendSMS: recipient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 231
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->fireOnLeaveApplication()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Exception in sending SMS "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Exception in sending SMS"

    const-string v2, "sendSMS"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioVolume(Ljava/lang/String;I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 683
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 684
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSUtilityController-> setAudioVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->setAudioVolume(Ljava/lang/String;I)V

    .line 687
    return-void
.end method

.method public setPlayableSettings(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1579
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1580
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1581
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1583
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1584
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1586
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1587
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1588
    :catch_0
    move-exception v4

    .line 1590
    :try_start_2
    const-string v4, "[InMobi]-[RE]-4.5.5"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playable Ads Settings map key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " has invalid value"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1594
    :catch_1
    move-exception v0

    .line 1596
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Exception setting playable settings"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1598
    :goto_1
    return-void

    .line 1593
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getPlayableListener()Lcom/inmobi/re/container/IMWebView$IMWebViewPlayableListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/inmobi/re/container/IMWebView$IMWebViewPlayableListener;->onPlayableSettingsReceived(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public setVideoVolume(Ljava/lang/String;I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 854
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 855
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> setVideoVolume: "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->setVideoVolume(Ljava/lang/String;I)V

    .line 858
    return-void
.end method

.method public setWebViewClosed(Z)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/inmobi/re/controller/JSUtilityController;->e:Z

    .line 135
    return-void
.end method

.method public showAlert(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 569
    const-string v0, "[InMobi]-[RE]-4.5.5"

    invoke-static {v0, p1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method public showVideo(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 814
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x31

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 815
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSUtilityController-> showVideo: id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->showVideo(Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->d:Lcom/inmobi/re/controller/JSDisplayController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSDisplayController;->stopAllListeners()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    return-void

    .line 563
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1211
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 1212
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Store picture called on URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    :try_start_0
    invoke-static {p1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getFinalRedirectedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1221
    const-string v1, "storePicture"

    invoke-virtual {p0, v1}, Lcom/inmobi/re/controller/JSUtilityController;->supports(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    :try_start_1
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 1224
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1227
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->a:Landroid/app/DownloadManager;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Invalid URL."

    const-string v2, "storePicture"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1228
    :catch_1
    move-exception v0

    .line 1229
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Unable to store."

    const-string v2, "storePicture"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public supports(Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v7, 0xb

    const/high16 v6, 0x10000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1058
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v3, Lcom/inmobi/commons/metric/EventLog;

    new-instance v4, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v5, 0x16

    invoke-direct {v4, v5}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 1061
    const-string v0, "html5video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "inlineVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1062
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_2

    .line 1063
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->isEnabledHardwareAcceleration()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1067
    :goto_1
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1189
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 1063
    goto :goto_0

    .line 1066
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 1070
    :cond_3
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1072
    if-eqz v0, :cond_4

    .line 1073
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    .line 1075
    :cond_4
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1077
    const-string v3, "tel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1079
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1083
    :cond_5
    const-string v3, "sms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1084
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1085
    const-string v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    iget-object v3, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1091
    if-nez v0, :cond_6

    .line 1092
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1095
    :goto_3
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    .line 1094
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .line 1099
    :cond_7
    const-string v3, "calendar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1100
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1101
    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    iget-object v3, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1107
    if-nez v0, :cond_8

    .line 1108
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1111
    :goto_4
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto/16 :goto_2

    .line 1110
    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    .line 1115
    :cond_9
    const-string v3, "microphone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1116
    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1119
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto/16 :goto_2

    :cond_a
    move v1, v2

    .line 1116
    goto :goto_5

    .line 1123
    :cond_b
    const-string v3, "storePicture"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1124
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_c

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1128
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto/16 :goto_2

    :cond_c
    move v1, v2

    .line 1124
    goto :goto_6

    .line 1132
    :cond_d
    const-string v3, "postToSocial.2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "postToSocial.3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1135
    :cond_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1136
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto/16 :goto_2

    .line 1139
    :cond_f
    const-string v3, "takeCameraPicture"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1140
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1142
    iget-object v4, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v4}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1144
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    .line 1147
    :goto_7
    if-nez v3, :cond_11

    .line 1148
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1153
    :goto_8
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto/16 :goto_2

    :cond_10
    move v0, v2

    .line 1144
    goto :goto_7

    .line 1151
    :cond_11
    if-eqz v0, :cond_12

    :goto_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    :cond_12
    move v1, v2

    goto :goto_9

    .line 1156
    :cond_13
    const-string v3, "getGalleryImage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1157
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1161
    iget-object v3, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1163
    if-nez v0, :cond_14

    .line 1164
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1167
    :goto_a
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto/16 :goto_2

    .line 1166
    :cond_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    .line 1170
    :cond_15
    const-string v3, "vibrate"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1171
    const-string v3, "android.permission.VIBRATE"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1174
    const-string v0, "vibrator"

    .line 1176
    iget-object v4, p0, Lcom/inmobi/re/controller/JSUtilityController;->d:Lcom/inmobi/re/controller/JSDisplayController;

    iget-object v4, v4, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v4}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1178
    if-nez v0, :cond_17

    .line 1179
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1184
    :goto_c
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto/16 :goto_2

    :cond_16
    move v0, v2

    .line 1171
    goto :goto_b

    .line 1180
    :cond_17
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_1a

    .line 1181
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_18

    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    :cond_18
    move v1, v2

    goto :goto_d

    :cond_19
    move v1, v2

    .line 1189
    goto/16 :goto_2

    :cond_1a
    move-object v0, v3

    goto :goto_c
.end method

.method public supportsFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1200
    invoke-virtual {p0, p1}, Lcom/inmobi/re/controller/JSUtilityController;->supports(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public takeCameraPicture()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1242
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    invoke-direct {v1, v2, v4}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 1243
    const-string v0, "takeCameraPicture"

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/JSUtilityController;->supports(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1244
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "takeCameraPicture called even if it is not supported"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    :cond_0
    :goto_0
    return-object v4

    .line 1248
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1249
    const-string v1, "extra_browser_type"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1252
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1253
    iget-object v2, p0, Lcom/inmobi/re/controller/JSUtilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1256
    new-instance v2, Lcom/inmobi/re/controller/JSUtilityController$5;

    invoke-direct {v2, p0, v1}, Lcom/inmobi/re/controller/JSUtilityController$5;-><init>(Lcom/inmobi/re/controller/JSUtilityController;Landroid/net/Uri;)V

    invoke-static {v2}, Lcom/inmobi/androidsdk/IMBrowserActivity;->generateId(Lcom/inmobi/re/controller/util/StartActivityForResultCallback;)I

    move-result v2

    .line 1289
    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1290
    const-string v2, "URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1291
    const-string v1, "action"

    const-string v2, "takeCameraPicture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1292
    iget-object v1, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1293
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onLeaveApplication()V

    goto :goto_0
.end method

.method public unMuteAudio(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 667
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 668
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> unMuteAudio: "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->unMuteAudio(Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public unMuteVideo(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 830
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 831
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> unMuteVideo: "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->unMuteVideo(Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method public unRegisterBroadcastListener()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/re/controller/JSUtilityController;->d()V

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "JSUtilityController-> unregisterBroadcastListener. Unable to unregister download listener"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unRegisterMicListener()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1489
    iget-boolean v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->h:Z

    if-nez v0, :cond_0

    .line 1493
    :goto_0
    return-void

    .line 1491
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->h:Z

    .line 1492
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->g:Lcom/inmobi/re/container/mraidimpl/AudioTriggerCallback;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/AudioTriggerer;->removeEventListener(Lcom/inmobi/re/container/mraidimpl/AudioTriggerCallback;)V

    goto :goto_0
.end method

.method public vibrate()V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-wide/16 v4, 0x7d0

    .line 1359
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 1361
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Creative not visible. Will not vibrate."

    const-string v2, "vibrate"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    :goto_0
    return-void

    .line 1366
    :cond_0
    const-string v0, "vibrate"

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/JSUtilityController;->supports(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1369
    invoke-virtual {v0, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1371
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1372
    new-instance v1, Lcom/inmobi/re/controller/JSUtilityController$7;

    invoke-direct {v1, p0}, Lcom/inmobi/re/controller/JSUtilityController$7;-><init>(Lcom/inmobi/re/controller/JSUtilityController;)V

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 1384
    :cond_1
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "vibrate called even if it is not supported"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public vibrate(Ljava/lang/String;I)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1395
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 1397
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Creative not visible. Will not vibrate."

    const-string v2, "vibrate"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1402
    :cond_1
    const-string v0, "vibrate"

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/JSUtilityController;->supports(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1403
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1405
    const-string v1, "\\["

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1406
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1408
    :cond_2
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1455
    :catch_0
    move-exception v0

    .line 1457
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "vibrate exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1411
    :cond_3
    :try_start_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1413
    array-length v1, v3

    .line 1414
    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/re/configs/ConfigParams;->getMaxVibPatternLength()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 1416
    const-string v1, "[InMobi]-[RE]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibration pattern exceeds max length. Will be truncated to max "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/re/configs/ConfigParams;->getMaxVibPatternLength()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/re/configs/ConfigParams;->getMaxVibPatternLength()I

    move-result v1

    move v2, v1

    .line 1421
    :goto_1
    new-array v4, v2, [J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1422
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_6

    .line 1425
    :try_start_2
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v4, v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1434
    :try_start_3
    aget-wide v6, v4, v1

    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/re/configs/ConfigParams;->getMaxVibDuration()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 1436
    const-string v5, "[InMobi]-[RE]-4.5.5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibration duration exceeds max. Will only vibrate for max "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/inmobi/re/configs/ConfigParams;->getMaxVibDuration()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/re/configs/ConfigParams;->getMaxVibDuration()I

    move-result v5

    int-to-long v6, v5

    aput-wide v6, v4, v1

    .line 1440
    :cond_4
    aget-wide v6, v4, v1

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    .line 1442
    iget-object v5, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v6, "Negative duration not allowed in vibration ."

    const-string v7, "vibrate"

    invoke-virtual {v5, v6, v7}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1426
    :catch_1
    move-exception v0

    .line 1429
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Invalid values of pattern in vibration ."

    const-string v2, "vibrate"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1446
    :cond_6
    if-eqz v4, :cond_0

    array-length v1, v4

    if-eqz v1, :cond_0

    .line 1447
    invoke-virtual {v0, v4, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_0

    .line 1450
    :cond_7
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Vibrate called even if it is not supported."

    const-string v2, "vibrate"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "vibrate called even if it is not supported"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_8
    move v2, v1

    goto/16 :goto_1
.end method
