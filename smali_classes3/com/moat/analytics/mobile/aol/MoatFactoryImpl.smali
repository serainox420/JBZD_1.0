.class Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;
.super Lcom/moat/analytics/mobile/aol/MoatFactory;
.source "MoatFactoryImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MoatFactory"

.field private static final onOffSwitch:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/moat/analytics/mobile/aol/OnOffSwitch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

.field private final webViewHound:Lcom/moat/analytics/mobile/aol/WebViewHound;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->onOffSwitch:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/MoatFactory;-><init>()V

    .line 33
    new-instance v0, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->webViewHound:Lcom/moat/analytics/mobile/aol/WebViewHound;

    .line 34
    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->onOffSwitch:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    new-instance v1, Lcom/moat/analytics/mobile/aol/NoOp$OnOffSwitch;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/aol/NoOp$OnOffSwitch;-><init>()V

    .line 37
    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;

    sget-object v2, Lcom/moat/analytics/mobile/aol/MoatNetImpl;->instance:Lcom/moat/analytics/mobile/aol/MoatNetImpl;

    invoke-direct {v0, v2}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;-><init>(Lcom/moat/analytics/mobile/aol/MoatNet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    sget-object v1, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->onOffSwitch:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    :cond_0
    new-instance v1, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;

    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->onOffSwitch:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-direct {v1, p1, v0}, Lcom/moat/analytics/mobile/aol/ActivityStateImpl;-><init>(Landroid/app/Activity;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

    .line 45
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/ActivityState;->listen()V

    .line 46
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/moat/analytics/mobile/aol/WebViewHound;Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/MoatFactory;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    invoke-static {p2}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    invoke-static {p3}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

    .line 54
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->webViewHound:Lcom/moat/analytics/mobile/aol/WebViewHound;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;)Lcom/moat/analytics/mobile/aol/ActivityState;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;)Lcom/moat/analytics/mobile/aol/WebViewHound;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->webViewHound:Lcom/moat/analytics/mobile/aol/WebViewHound;

    return-object v0
.end method

.method private createNativeDisplayTrackerUnsafe(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {p1}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 178
    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->onOffSwitch:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    .line 179
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 180
    new-instance v2, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$3;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$3;-><init>(Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;Ljava/lang/ref/WeakReference;Lcom/moat/analytics/mobile/aol/OnOffSwitch;Ljava/lang/String;)V

    .line 197
    new-instance v1, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl$Postponer;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl$Postponer;-><init>()V

    .line 198
    invoke-static {v0, v2, v1}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->create(Lcom/moat/analytics/mobile/aol/OnOffSwitch;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;

    return-object v0
.end method

.method private createNativeVideoTrackerUnsafe(Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/NativeVideoTracker;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->onOffSwitch:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    .line 203
    new-instance v1, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$4;-><init>(Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;Lcom/moat/analytics/mobile/aol/OnOffSwitch;Ljava/lang/String;)V

    .line 213
    new-instance v2, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;

    invoke-direct {v2}, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;-><init>()V

    .line 214
    invoke-static {v0, v1, v2}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->create(Lcom/moat/analytics/mobile/aol/OnOffSwitch;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/NativeVideoTracker;

    return-object v0
.end method

.method private createWebAdTrackerUnsafe(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p1}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->onOffSwitch:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    .line 148
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 149
    new-instance v2, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$2;-><init>(Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;Ljava/lang/ref/WeakReference;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V

    .line 172
    new-instance v1, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl$Postponer;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl$Postponer;-><init>()V

    .line 173
    invoke-static {v0, v2, v1}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->create(Lcom/moat/analytics/mobile/aol/OnOffSwitch;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/WebAdTracker;

    return-object v0
.end method

.method private createWebAdTrackerUnsafe(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p1}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 122
    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->onOffSwitch:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    .line 123
    new-instance v2, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl$1;-><init>(Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;Ljava/lang/ref/WeakReference;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V

    .line 141
    new-instance v1, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl$Postponer;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl$Postponer;-><init>()V

    .line 142
    invoke-static {v0, v2, v1}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->create(Lcom/moat/analytics/mobile/aol/OnOffSwitch;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/WebAdTracker;

    return-object v0
.end method


# virtual methods
.method public createCustomTracker(Lcom/moat/analytics/mobile/aol/MoatPlugin;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/aol/MoatPlugin",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->createCustomTrackerUnsafe(Lcom/moat/analytics/mobile/aol/MoatPlugin;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    .line 105
    invoke-interface {p1}, Lcom/moat/analytics/mobile/aol/MoatPlugin;->createNoOp()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public createCustomTrackerUnsafe(Lcom/moat/analytics/mobile/aol/MoatPlugin;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/aol/MoatPlugin",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->onOffSwitch:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {p1, v1, v0}, Lcom/moat/analytics/mobile/aol/MoatPlugin;->create(Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;
    .locals 1

    .prologue
    .line 82
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->createNativeDisplayTrackerUnsafe(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    .line 85
    new-instance v0, Lcom/moat/analytics/mobile/aol/NoOp$NativeDisplayTracker;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/aol/NoOp$NativeDisplayTracker;-><init>()V

    goto :goto_0
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/NativeVideoTracker;
    .locals 1

    .prologue
    .line 92
    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->createNativeVideoTrackerUnsafe(Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/NativeVideoTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    .line 95
    new-instance v0, Lcom/moat/analytics/mobile/aol/NoOp$NativeVideoTracker;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/aol/NoOp$NativeVideoTracker;-><init>()V

    goto :goto_0
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    .locals 1

    .prologue
    .line 72
    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->createWebAdTrackerUnsafe(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    .line 75
    new-instance v0, Lcom/moat/analytics/mobile/aol/NoOp$WebAdTracker;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/aol/NoOp$WebAdTracker;-><init>()V

    goto :goto_0
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    .locals 1

    .prologue
    .line 61
    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->createWebAdTrackerUnsafe(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    .line 64
    new-instance v0, Lcom/moat/analytics/mobile/aol/NoOp$WebAdTracker;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/aol/NoOp$WebAdTracker;-><init>()V

    goto :goto_0
.end method

.method public createWebDisplayTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/aol/WebAdTracker;

    move-result-object v0

    return-object v0
.end method

.method public createWebDisplayTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;->createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/aol/WebAdTracker;

    move-result-object v0

    return-object v0
.end method
