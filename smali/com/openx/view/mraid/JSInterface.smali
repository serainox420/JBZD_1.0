.class public interface abstract Lcom/openx/view/mraid/JSInterface;
.super Ljava/lang/Object;
.source "JSInterface.java"


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "close"

.field public static final ACTION_CREATE_CALENDAR_EVENT:Ljava/lang/String; = "createCalendarEvent"

.field public static final ACTION_EXPAND:Ljava/lang/String; = "expand"

.field public static final ACTION_GET_CURRENT_POSITION:Ljava/lang/String; = "getCurrentPosition"

.field public static final ACTION_GET_DEFAULT_POSITION:Ljava/lang/String; = "getDefaultPosition"

.field public static final ACTION_GET_MAX_SIZE:Ljava/lang/String; = "getMaxSize"

.field public static final ACTION_GET_PLACEMENT_TYPE:Ljava/lang/String; = "getPlacementType"

.field public static final ACTION_GET_SCREEN_SIZE:Ljava/lang/String; = "getScreenSize"

.field public static final ACTION_OPEN:Ljava/lang/String; = "open"

.field public static final ACTION_PLAY_VIDEO:Ljava/lang/String; = "playVideo"

.field public static final ACTION_RESIZE:Ljava/lang/String; = "resize"

.field public static final ACTION_STORE_PICTURE:Ljava/lang/String; = "storePicture"

.field public static final JSON_HEIGHT:Ljava/lang/String; = "height"

.field public static final JSON_IS_MODAL:Ljava/lang/String; = "isModal"

.field public static final JSON_METHOD:Ljava/lang/String; = "method"

.field public static final JSON_USE_CUSTOM_CLOSE:Ljava/lang/String; = "useCustomClose"

.field public static final JSON_VALUE:Ljava/lang/String; = "value"

.field public static final JSON_WIDTH:Ljava/lang/String; = "width"

.field public static final JSON_X:Ljava/lang/String; = "x"

.field public static final JSON_Y:Ljava/lang/String; = "y"

.field public static final STATE_DEFAULT:Ljava/lang/String; = "default"

.field public static final STATE_EXPANDED:Ljava/lang/String; = "expanded"

.field public static final STATE_HIDDEN:Ljava/lang/String; = "hidden"

.field public static final STATE_LOADING:Ljava/lang/String; = "loading"

.field public static final STATE_RESIZED:Ljava/lang/String; = "resized"


# virtual methods
.method public abstract close()V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract createCalendarEvent(Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract expand()V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract expand(Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract getCurrentPosition()Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract getDefaultPosition()Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract getMaxSize()Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract getPlacementType()Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract getScreenSize()Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract javaScriptCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract onOrientationPropertiesChanged(Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract playVideo(Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract resize()V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract storePicture(Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public abstract supports(Ljava/lang/String;)Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method
