.class Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;
.super Ljava/lang/Object;
.source "ViewTrackerImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/JavaScriptBridge$Responder;
.implements Lcom/moat/analytics/mobile/aol/ViewTracker;


# static fields
.field private static final ANDROID_SDK_VERSION:Ljava/lang/String; = "av"

.field private static final APP_NAME:Ljava/lang/String; = "lw"

.field private static final DENSITY_RATIO:Ljava/lang/String; = "dr"

.field private static final IN_FOCUS:Ljava/lang/String; = "inFocus"

.field private static final IS_NATIVE:Ljava/lang/String; = "ma"

.field private static final NAMESPACE:Ljava/lang/String; = "lu"

.field private static final REVISION:Ljava/lang/String; = "ar"

.field private static final SCREEN_RECT:Ljava/lang/String; = "screen"

.field private static final TAG:Ljava/lang/String; = "MoatViewTracker"

.field private static final VERSION:Ljava/lang/String; = "sv"

.field private static final VISIBLE_RECT:Ljava/lang/String; = "visible"

.field private static final VISIBLE_RECT_ALT:Ljava/lang/String; = "maybe"

.field private static final WEB_VIEW_RECT:Ljava/lang/String; = "view"


# instance fields
.field private final activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

.field private appName:Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/aol/base/functional/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bridge:Lcom/moat/analytics/mobile/aol/JavaScriptBridge;

.field private isNative:Z

.field private final moat:Landroid/webkit/WebView;

.field private final onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

.field private subject:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/webkit/WebView;ZLcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V
    .locals 7

    .prologue
    .line 51
    new-instance v4, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, p5}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;-><init>(Landroid/content/Context;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;-><init>(Landroid/view/View;Landroid/webkit/WebView;ZLcom/moat/analytics/mobile/aol/JavaScriptBridge;Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V

    .line 52
    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/webkit/WebView;ZLcom/moat/analytics/mobile/aol/JavaScriptBridge;Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    invoke-static {p2}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 57
    invoke-static {p5}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    invoke-static {p4}, Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    invoke-interface {p6}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "MoatViewTracker"

    const-string v1, "In initialization method."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    iput-object p5, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

    .line 63
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->subject:Landroid/view/View;

    .line 64
    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->moat:Landroid/webkit/WebView;

    .line 65
    iput-boolean p3, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->isNative:Z

    .line 66
    iput-object p4, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->bridge:Lcom/moat/analytics/mobile/aol/JavaScriptBridge;

    .line 67
    iput-object p6, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    .line 68
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->appName:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 69
    return-void
.end method

.method private getAppName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->appName:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->appName:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    :goto_0
    return-object v0

    .line 145
    :cond_0
    const-string v1, "_unknown_"

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->moat:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 149
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 151
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 153
    :try_start_1
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->appName:Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    :goto_1
    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 154
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->subject:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method private getScreenRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 215
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 216
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 217
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private getVisibleRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 241
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->minMinMinMin()Landroid/graphics/Rect;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->subject:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->minMinMinMin()Landroid/graphics/Rect;

    move-result-object v0

    .line 245
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 246
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 247
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 248
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 249
    return-object v0
.end method

.method private isFocused()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->subject:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->activityState:Lcom/moat/analytics/mobile/aol/ActivityState;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/ActivityState;->isOutOfFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private minMinMinMin()Landroid/graphics/Rect;
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 253
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private putJsonRect(Ljava/util/Map;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0, p3}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->toWebViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->toXYWHJson(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method private static toJson(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 94
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    if-nez p1, :cond_1

    .line 98
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toWebViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 223
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 224
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 231
    :goto_0
    return-object p1

    .line 227
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 228
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 229
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 230
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    div-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 231
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private static toXYWHJson(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x2c

    const/16 v6, 0x22

    .line 108
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "y"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeTargetView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v1, "MoatViewTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changing view to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->subject:Landroid/view/View;

    .line 210
    return-void

    .line 207
    :cond_1
    const-string v0, "null"

    goto :goto_0
.end method

.method public getAdViewRect()Landroid/graphics/Rect;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 196
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->subject:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 197
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 198
    const/4 v2, 0x1

    aget v0, v0, v2

    .line 199
    iget-object v2, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->subject:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 200
    iget-object v3, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->subject:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 201
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 195
    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data
.end method

.method public getJSEnvString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->getMetadata()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->toJson(Ljava/util/Map;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v0, "{}"

    goto :goto_0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 162
    const-string v0, "4724e28a731f8ba73e9eecc4d5c807705dd80963"

    .line 163
    const-string v0, "AOL"

    .line 164
    const-string v0, "1.7.11"

    .line 165
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->isNative:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 168
    :goto_0
    const-string v4, "versionHash"

    const-string v5, "4724e28a731f8ba73e9eecc4d5c807705dd80963"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v4, "appName"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v2, "namespace"

    const-string v4, "AOL"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v2, "version"

    const-string v4, "1.7.11"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v2, "deviceOS"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v2, "isNative"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-object v1

    .line 167
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getVisibilityInfo()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 124
    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->getVisibleRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 125
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->getAdViewRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 126
    const-string v5, "screen"

    invoke-direct {p0, v1, v5, v2}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->putJsonRect(Ljava/util/Map;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 127
    const-string v2, "visible"

    invoke-direct {p0, v1, v2, v3}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->putJsonRect(Ljava/util/Map;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 128
    const-string v2, "maybe"

    invoke-direct {p0, v1, v2, v3}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->putJsonRect(Ljava/util/Map;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 129
    const-string v2, "view"

    invoke-direct {p0, v1, v2, v4}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->putJsonRect(Ljava/util/Map;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 130
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 131
    :cond_0
    const-string v2, "inFocus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 133
    const-string v2, "dr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->toJson(Ljava/util/Map;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string v0, "{}"

    goto :goto_0
.end method

.method public stopTracking()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->bridge:Lcom/moat/analytics/mobile/aol/JavaScriptBridge;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridge;->removeBridge()V

    .line 86
    return-void
.end method

.method public track()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "MoatViewTracker"

    const-string v1, "Attempting bridge installation."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->bridge:Lcom/moat/analytics/mobile/aol/JavaScriptBridge;

    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->moat:Landroid/webkit/WebView;

    invoke-interface {v0, v1, p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridge;->installBridge(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/aol/JavaScriptBridge$Responder;)Z

    move-result v1

    .line 77
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/ViewTrackerImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v2, "MoatViewTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bridge "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "installed."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    return v1

    .line 78
    :cond_2
    const-string v0, "not "

    goto :goto_0
.end method
