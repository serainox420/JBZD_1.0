.class public Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;
.super Lcom/smartadserver/android/library/model/SASAdElement;
.source "SASNativeVideoAdElement.java"


# static fields
.field public static final AUDIO_MODE_AUTO:I = 0x1

.field public static final AUDIO_MODE_MUTE:I = 0x0

.field public static final AUDIO_MODE_ON:I = 0x2

.field public static final BACKGROUND_RESIZE_100_PERCENT:I = 0x2

.field public static final BACKGROUND_RESIZE_CONTAIN:I = 0x1

.field public static final BACKGROUND_RESIZE_COVER:I = 0x0

.field public static final CALL_TO_ACTION_TYPE_APPLICATION:I = 0x2

.field public static final CALL_TO_ACTION_TYPE_CUSTOM:I = 0x3

.field public static final CALL_TO_ACTION_TYPE_VIDEO:I = 0x1

.field public static final CALL_TO_ACTION_TYPE_WEBSITE:I = 0x0

.field public static final SKIP_POLICY_ALWAYS:I = 0x0

.field public static final SKIP_POLICY_NEVER:I = 0x1

.field public static final SKIP_POLICY_VAST_CONTROLLED:I = 0x2

.field public static final TRACKING_EVENT_NAMES:[Ljava/lang/String;

.field public static final TRACKING_EVENT_NAME_CLICK:Ljava/lang/String; = "click"

.field public static final TRACKING_EVENT_NAME_COMPLETE:Ljava/lang/String; = "complete"

.field public static final TRACKING_EVENT_NAME_CREATIVE_VIEW:Ljava/lang/String; = "creativeView"

.field public static final TRACKING_EVENT_NAME_EXIT_FULLSCREEN:Ljava/lang/String; = "exitFullscreen"

.field public static final TRACKING_EVENT_NAME_FIRST_QUARTILE:Ljava/lang/String; = "firstQuartile"

.field public static final TRACKING_EVENT_NAME_FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field public static final TRACKING_EVENT_NAME_MIDPOINT:Ljava/lang/String; = "midpoint"

.field public static final TRACKING_EVENT_NAME_MUTE:Ljava/lang/String; = "mute"

.field public static final TRACKING_EVENT_NAME_PAUSE:Ljava/lang/String; = "pause"

.field public static final TRACKING_EVENT_NAME_PROGRESS:Ljava/lang/String; = "progress"

.field public static final TRACKING_EVENT_NAME_RESUME:Ljava/lang/String; = "resume"

.field public static final TRACKING_EVENT_NAME_REWIND:Ljava/lang/String; = "rewind"

.field public static final TRACKING_EVENT_NAME_SKIP:Ljava/lang/String; = "skip"

.field public static final TRACKING_EVENT_NAME_START:Ljava/lang/String; = "start"

.field public static final TRACKING_EVENT_NAME_THIRD_QUARTILE:Ljava/lang/String; = "thirdQuartile"

.field public static final TRACKING_EVENT_NAME_TIME_TO_CLICK:Ljava/lang/String; = "timeToClick"

.field public static final TRACKING_EVENT_NAME_UNMUTE:Ljava/lang/String; = "unmute"

.field public static final VAST_COMPANION_AS_BACKGROUND:Ljava/lang/String; = "companionBackground"

.field public static final VIDEO_POSITION_BOTTOM:I = 0x2

.field public static final VIDEO_POSITION_CENTER:I = 0x1

.field public static final VIDEO_POSITION_TOP:I = 0x0

.field public static final VIDEO_REWARD:Ljava/lang/String; = "reward"

.field public static final VIDEO_REWARD_AMOUNT:Ljava/lang/String; = "amount"

.field public static final VIDEO_REWARD_CURRENCY:Ljava/lang/String; = "currency"


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Lcom/smartadserver/android/library/model/b;

.field private M:Lcom/smartadserver/android/library/model/SASAdElement;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 118
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "click"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "timeToClick"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "creativeView"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "start"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "firstQuartile"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "midpoint"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "thirdQuartile"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "complete"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mute"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "unmute"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pause"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rewind"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "resume"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fullscreen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "exitFullscreen"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "progress"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "skip"

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->TRACKING_EVENT_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 186
    invoke-direct {p0}, Lcom/smartadserver/android/library/model/SASAdElement;-><init>()V

    .line 138
    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->d:I

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->e:I

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->H:Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->I:Ljava/util/HashMap;

    .line 187
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/smartadserver/android/library/exception/SASAdTimeoutException;,
            Lcom/smartadserver/android/library/exception/SASVASTParsingException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 230
    invoke-direct {p0}, Lcom/smartadserver/android/library/model/SASAdElement;-><init>()V

    .line 138
    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->d:I

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->e:I

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->H:Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->I:Ljava/util/HashMap;

    .line 234
    if-eqz p1, :cond_1c

    .line 237
    :try_start_0
    const-string v0, "videoUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->b:Ljava/lang/String;

    .line 246
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :cond_0
    :goto_0
    :try_start_2
    const-string v0, "vastUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->J:Ljava/lang/String;

    .line 253
    const-string v0, "vastMarkup"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->K:Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->J:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 256
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Missing required videoUrl or vastUrl element"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    instance-of v1, v0, Lcom/smartadserver/android/library/exception/SASAdTimeoutException;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/smartadserver/android/library/exception/SASVASTParsingException;

    if-eqz v1, :cond_2

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->H:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->H:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 523
    invoke-static {v3}, Lcom/smartadserver/android/library/a/c;->a(Landroid/content/Context;)Lcom/smartadserver/android/library/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;Z)V

    .line 527
    :cond_2
    throw v0

    .line 259
    :cond_3
    :try_start_3
    const-string v0, "autoplay"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_6

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->i:Z

    .line 260
    const-string v0, "autoclose"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_7

    move v0, v6

    :goto_2
    iput-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->j:Z

    .line 261
    const-string v0, "skipPolicy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->r:I

    .line 262
    const-string v0, "audioMode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->t:I

    .line 263
    const-string v0, "restartVideoWhenEnteringFullscreen"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_8

    move v0, v6

    :goto_3
    iput-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->h:Z

    .line 264
    const-string v0, "posterImageUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->f:Ljava/lang/String;

    .line 265
    const-string v0, "backgroundColor"

    const-string v1, "000000"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->p:I

    .line 267
    const-string v0, "backgroundImageUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->n:Ljava/lang/String;

    .line 268
    const-string v0, "backgroundResizeMode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->o:I

    .line 269
    const-string v0, "posterImageOffsetPosition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->g:Ljava/lang/String;

    .line 270
    const-string v0, "callToActionType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->k:I

    .line 271
    const-string v0, "callToActionCustomText"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->l:Ljava/lang/String;

    .line 272
    const-string v0, "videoPosition"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->q:I

    .line 274
    const-string v0, "stickToTop"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_9

    move v0, v6

    :goto_4
    iput-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->E:Z

    .line 275
    const-string v0, "skippable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_a

    move v0, v6

    :goto_5
    iput-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->F:Z

    .line 277
    const-string v0, "video360"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_b

    move v0, v6

    :goto_6
    iput-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->G:Z

    .line 279
    const-string v0, "adFailUrl"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->H:Ljava/lang/String;

    .line 281
    const-string v0, "adParameters"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->c:Ljava/lang/String;

    .line 283
    const-string v0, "videoBlurredBackground"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_c

    .line 285
    const-string v1, "blurRadius"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->v:I

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tintColor"

    const-string v5, "000000"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->w:I

    .line 287
    const-string v1, "tintOpacity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->x:I

    .line 291
    const/4 v1, 0x2

    iput v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->z:I

    .line 292
    const/4 v1, 0x4

    iput v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->y:I

    .line 294
    const-string v1, "config"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_5

    .line 296
    const-string v1, "android"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_5

    .line 298
    const-string v1, "high"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 299
    if-eqz v1, :cond_4

    .line 300
    const-string v2, "size"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 301
    if-lez v1, :cond_4

    .line 302
    iput v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->z:I

    .line 305
    :cond_4
    const-string v1, "low"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_5

    .line 307
    const-string v1, "size"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 308
    if-lez v0, :cond_5

    .line 309
    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->y:I

    .line 319
    :cond_5
    :goto_7
    const-string v0, "companionBackground"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_d

    move v0, v6

    :goto_8
    iput-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->A:Z

    .line 321
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 324
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->J:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->J:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 325
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->J:Ljava/lang/String;

    .line 332
    :goto_9
    if-eqz v0, :cond_16

    .line 335
    const-wide/16 v8, 0x0

    cmp-long v1, p2, v8

    if-gtz v1, :cond_10

    .line 336
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdTimeoutException;

    const-string v1, "Timeout before fetching VAST"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v4

    .line 259
    goto/16 :goto_1

    :cond_7
    move v0, v4

    .line 260
    goto/16 :goto_2

    :cond_8
    move v0, v4

    .line 263
    goto/16 :goto_3

    :cond_9
    move v0, v4

    .line 274
    goto/16 :goto_4

    :cond_a
    move v0, v4

    .line 275
    goto/16 :goto_5

    :cond_b
    move v0, v4

    .line 277
    goto/16 :goto_6

    .line 316
    :cond_c
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->v:I

    goto :goto_7

    :cond_d
    move v0, v4

    .line 319
    goto :goto_8

    .line 326
    :cond_e
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->K:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->K:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 327
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->K:Ljava/lang/String;

    goto :goto_9

    :cond_f
    move-object v0, v3

    .line 329
    goto :goto_9

    .line 340
    :cond_10
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 343
    new-instance v2, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement$1;-><init>(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 352
    :try_start_4
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/model/c;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 360
    :try_start_5
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 363
    const-string v1, "SASNativeVideoAdElement"

    const-string v2, "VASTAdElement OK !"

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->a()Lcom/smartadserver/android/library/model/c$c;

    move-result-object v1

    .line 368
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->c:Ljava/lang/String;

    .line 369
    const-string v2, "VPAID"

    iget-object v5, v1, Lcom/smartadserver/android/library/model/c$c;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 370
    iget-object v2, v1, Lcom/smartadserver/android/library/model/c$c;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->b:Ljava/lang/String;

    .line 375
    :goto_a
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->i()I

    move-result v2

    iput v2, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->u:I

    .line 377
    iget v2, v1, Lcom/smartadserver/android/library/model/c$c;->e:I

    invoke-virtual {p0, v2}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setMediaWidth(I)V

    .line 378
    iget v1, v1, Lcom/smartadserver/android/library/model/c$c;->f:I

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setMediaHeight(I)V

    .line 381
    const-string v1, ","

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 383
    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setImpressionUrlString(Ljava/lang/String;)V

    .line 387
    :cond_11
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->f()Ljava/lang/String;

    move-result-object v1

    .line 388
    if-eqz v1, :cond_12

    .line 389
    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setClickUrl(Ljava/lang/String;)V

    .line 393
    :cond_12
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->g()Ljava/util/ArrayList;

    move-result-object v1

    .line 394
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 395
    const-string v2, "click"

    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_13
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->e()Ljava/util/HashMap;

    move-result-object v1

    .line 400
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 401
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 402
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 403
    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 353
    :catch_1
    move-exception v0

    .line 354
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdTimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not fetch VAST ad in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :catch_2
    move-exception v0

    .line 356
    new-instance v1, Lcom/smartadserver/android/library/exception/SASVASTParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/smartadserver/android/library/exception/SASVASTParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :cond_14
    iget-object v2, v1, Lcom/smartadserver/android/library/model/c$c;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->a:Ljava/lang/String;

    goto/16 :goto_a

    .line 406
    :cond_15
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->s:Ljava/lang/String;

    .line 407
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->m:Ljava/lang/String;

    .line 410
    iget-boolean v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->A:Z

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->j()Lcom/smartadserver/android/library/model/c$b;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 411
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/c;->j()Lcom/smartadserver/android/library/model/c$b;

    move-result-object v0

    .line 413
    iget-object v1, v0, Lcom/smartadserver/android/library/model/c$b;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setBackgroundImageUrl(Ljava/lang/String;)V

    .line 414
    iget-object v1, v0, Lcom/smartadserver/android/library/model/c$b;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->c(Ljava/lang/String;)V

    .line 415
    iget-object v1, v0, Lcom/smartadserver/android/library/model/c$b;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->a(Ljava/lang/String;)V

    .line 416
    iget-object v0, v0, Lcom/smartadserver/android/library/model/c$b;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->b(Ljava/lang/String;)V

    .line 422
    :cond_16
    const-string v0, "trackEvents"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 426
    if-eqz v2, :cond_21

    .line 428
    const-string v0, "urlTemplate"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string v1, "wrapperEvents"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 433
    const-string v5, "progressOffset"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->m:Ljava/lang/String;

    move-object v2, v0

    move-object v5, v1

    .line 436
    :goto_c
    if-nez v5, :cond_17

    if-nez v2, :cond_17

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 438
    :cond_17
    sget-object v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->TRACKING_EVENT_NAMES:[Ljava/lang/String;

    array-length v8, v0

    .line 439
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v1, v4

    .line 440
    :goto_d
    if-ge v1, v8, :cond_1b

    .line 441
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 442
    sget-object v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->TRACKING_EVENT_NAMES:[Ljava/lang/String;

    aget-object v4, v0, v1

    .line 444
    if-eqz v2, :cond_18

    .line 445
    const-string v0, "[eventName]"

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_18
    if-eqz v5, :cond_19

    .line 449
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_19

    .line 451
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_19
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 457
    if-eqz v0, :cond_1a

    .line 458
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 462
    :cond_1a
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setEventTrackingURLs(Ljava/lang/String;[Ljava/lang/String;)V

    .line 440
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 467
    :cond_1b
    const-string v0, "reward"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_1c

    .line 470
    const-string v1, "currency"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 471
    const-string v2, "amount"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 473
    new-instance v0, Lcom/smartadserver/android/library/model/b;

    invoke-direct {v0, v1, v4, v5}, Lcom/smartadserver/android/library/model/b;-><init>(Ljava/lang/String;D)V

    .line 475
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 476
    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->L:Lcom/smartadserver/android/library/model/b;

    .line 483
    :cond_1c
    const-string v0, "htmlLayer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_1d

    .line 485
    const-string v1, "htmlLayerScriptUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 486
    const-string v1, "htmlLayerScript"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    const-string v2, ""

    .line 489
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 491
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1e

    .line 511
    :goto_e
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    .line 512
    new-instance v2, Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-direct {v2}, Lcom/smartadserver/android/library/model/SASAdElement;-><init>()V

    iput-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->M:Lcom/smartadserver/android/library/model/SASAdElement;

    .line 513
    iget-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->M:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v2, v0}, Lcom/smartadserver/android/library/model/SASAdElement;->setBaseUrl(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->M:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setHtmlContents(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->M:Lcom/smartadserver/android/library/model/SASAdElement;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setCloseButtonAppearanceDelay(I)V

    .line 516
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->M:Lcom/smartadserver/android/library/model/SASAdElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setDisplayCloseAppearanceCountDown(Z)V

    .line 530
    :cond_1d
    return-void

    .line 493
    :cond_1e
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v1

    if-lez v1, :cond_20

    .line 496
    :try_start_6
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 501
    :goto_f
    const/4 v1, 0x1

    :try_start_7
    new-array v2, v1, [Ljava/lang/String;

    .line 503
    invoke-static {v0, v2}, Lcom/smartadserver/android/library/g/b;->a(Ljava/net/URL;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    const/4 v0, 0x0

    aget-object v0, v2, v0

    if-eqz v0, :cond_1f

    .line 505
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 497
    :catch_3
    move-exception v0

    .line 498
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v3

    goto :goto_f

    .line 507
    :cond_1f
    invoke-static {v4}, Lcom/smartadserver/android/library/g/c;->h(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v0

    goto :goto_e

    .line 248
    :catch_4
    move-exception v0

    goto/16 :goto_0

    :cond_20
    move-object v1, v2

    goto :goto_e

    :cond_21
    move-object v2, v3

    move-object v5, v3

    goto/16 :goto_c
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->C:Ljava/lang/String;

    .line 989
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->D:Ljava/lang/String;

    .line 1004
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->B:Ljava/lang/String;

    .line 1019
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1063
    const-string v0, "Native Video "

    return-object v0
.end method

.method public getAdFailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->H:Ljava/lang/String;

    return-object v0
.end method

.method public getAdParameters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->t:I

    return v0
.end method

.method public getBackgroundClickTrackingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->p:I

    return v0
.end method

.method public getBackgroundImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundImpressionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundResizeMode()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->o:I

    return v0
.end method

.method public getBlurDownScaleFactorHighEnd()I
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->z:I

    return v0
.end method

.method public getBlurDownScaleFactorLowEnd()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->y:I

    return v0
.end method

.method public getBlurRadius()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->v:I

    return v0
.end method

.method public getCallToActionCustomText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToActionType()I
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->k:I

    return v0
.end method

.method public getClickUrlFromBackground(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1022
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getBackgroundClickUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1023
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getBackgroundClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 1026
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/smartadserver/android/library/model/SASAdElement;->getDebugInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getVideoDebugInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1072
    return-object v0
.end method

.method public getEventTrackingURL(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->I:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlLayerAdElement()Lcom/smartadserver/android/library/model/SASAdElement;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->M:Lcom/smartadserver/android/library/model/SASAdElement;

    return-object v0
.end method

.method public getMediaDuration()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->u:I

    return v0
.end method

.method public getMediaHeight()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->e:I

    return v0
.end method

.method public getMediaWidth()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->d:I

    return v0
.end method

.method public getPosterImageOffsetPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPosterImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getReward()Lcom/smartadserver/android/library/model/b;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->L:Lcom/smartadserver/android/library/model/b;

    return-object v0
.end method

.method public getSkipOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipPolicy()I
    .locals 1

    .prologue
    .line 761
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->r:I

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->w:I

    return v0
.end method

.method public getTintOpacity()I
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->x:I

    return v0
.end method

.method public getVPAIDUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDebugInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1079
    const-string v0, " | VideoURL: "

    .line 1080
    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1085
    :cond_0
    :goto_0
    return-object v0

    .line 1082
    :cond_1
    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoVerticalPosition()I
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->q:I

    return v0
.end method

.method public isAutoclose()Z
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->j:Z

    return v0
.end method

.method public isAutoplay()Z
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->i:Z

    return v0
.end method

.method public isOpenClickInApplication()Z
    .locals 1

    .prologue
    .line 884
    const/4 v0, 0x0

    return v0
.end method

.method public isRestartWhenEnteringFullscreen()Z
    .locals 1

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->h:Z

    return v0
.end method

.method public isStickToTopEnabled()Z
    .locals 1

    .prologue
    .line 905
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->E:Z

    return v0
.end method

.method public isStickToTopSkippable()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->F:Z

    return v0
.end method

.method public isVideo360Mode()Z
    .locals 1

    .prologue
    .line 949
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->G:Z

    return v0
.end method

.method public setAdFailUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 972
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->H:Ljava/lang/String;

    .line 973
    return-void
.end method

.method public setAudioMode(I)V
    .locals 1

    .prologue
    .line 646
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 647
    :cond_0
    const/4 p1, 0x1

    .line 649
    :cond_1
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->t:I

    .line 650
    return-void
.end method

.method public setAutoclose(Z)V
    .locals 0

    .prologue
    .line 801
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->j:Z

    .line 802
    return-void
.end method

.method public setAutoplay(Z)V
    .locals 0

    .prologue
    .line 787
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->i:Z

    .line 788
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 683
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->p:I

    .line 684
    return-void
.end method

.method public setBackgroundImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->n:Ljava/lang/String;

    .line 607
    return-void
.end method

.method public setBackgroundResizeMode(I)V
    .locals 0

    .prologue
    .line 626
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->o:I

    .line 627
    return-void
.end method

.method public setBlurRadius(I)V
    .locals 0

    .prologue
    .line 726
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->v:I

    .line 727
    return-void
.end method

.method public setCallToActionCustomText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 838
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->l:Ljava/lang/String;

    .line 839
    return-void
.end method

.method public setCallToActionType(I)V
    .locals 0

    .prologue
    .line 822
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->k:I

    .line 823
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 895
    invoke-super {p0, p1}, Lcom/smartadserver/android/library/model/SASAdElement;->setClickUrl(Ljava/lang/String;)V

    .line 896
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->C:Ljava/lang/String;

    .line 897
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->D:Ljava/lang/String;

    .line 898
    return-void
.end method

.method public setEventTrackingURLs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->I:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    return-void
.end method

.method public setHtmlLayerAdElement(Lcom/smartadserver/android/library/model/SASAdElement;)V
    .locals 0

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->M:Lcom/smartadserver/android/library/model/SASAdElement;

    .line 1057
    return-void
.end method

.method public setMediaHeight(I)V
    .locals 0

    .prologue
    .line 219
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->e:I

    .line 220
    if-lez p1, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setPortraitHeight(I)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setLandscapeHeight(I)V

    .line 225
    :cond_0
    return-void
.end method

.method public setMediaWidth(I)V
    .locals 0

    .prologue
    .line 200
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->d:I

    .line 201
    if-lez p1, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setPortraitWidth(I)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setLandscapeWidth(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public setPosterImageOffsetPosition(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->g:Ljava/lang/String;

    .line 592
    return-void
.end method

.method public setPosterImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->f:Ljava/lang/String;

    .line 576
    return-void
.end method

.method public setProgressOffset(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->m:Ljava/lang/String;

    .line 876
    return-void
.end method

.method public setRestartWhenEnteringFullscreen(Z)V
    .locals 0

    .prologue
    .line 754
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->h:Z

    .line 755
    return-void
.end method

.method public setReward(Lcom/smartadserver/android/library/model/b;)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->L:Lcom/smartadserver/android/library/model/b;

    .line 1042
    return-void
.end method

.method public setSkipPolicy(I)V
    .locals 0

    .prologue
    .line 768
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->r:I

    .line 769
    return-void
.end method

.method public setStickToTopEnabled(Z)V
    .locals 0

    .prologue
    .line 913
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->E:Z

    .line 914
    return-void
.end method

.method public setStickToTopSkippable(Z)V
    .locals 0

    .prologue
    .line 929
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->F:Z

    .line 930
    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .prologue
    .line 712
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->w:I

    .line 713
    return-void
.end method

.method public setTintOpacity(I)V
    .locals 0

    .prologue
    .line 698
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->x:I

    .line 699
    return-void
.end method

.method public setVideo360Mode(Z)V
    .locals 0

    .prologue
    .line 956
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->G:Z

    .line 957
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->a:Ljava/lang/String;

    .line 562
    return-void
.end method

.method public setVideoVerticalPosition(I)V
    .locals 0

    .prologue
    .line 659
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->q:I

    .line 660
    return-void
.end method
