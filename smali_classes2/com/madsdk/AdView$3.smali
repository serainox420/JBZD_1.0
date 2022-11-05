.class Lcom/madsdk/AdView$3;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lcom/madsdk/javascript/MraidEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madsdk/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madsdk/AdView;


# direct methods
.method constructor <init>(Lcom/madsdk/AdView;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/madsdk/AdView$3$1;

    invoke-direct {v1, p0}, Lcom/madsdk/AdView$3$1;-><init>(Lcom/madsdk/AdView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public createCalendarEvent(Lcom/madsdk/CalendarEvent;)V
    .locals 6

    .prologue
    .line 310
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v0}, Lcom/madsdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 311
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 312
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mmZ"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 314
    :try_start_0
    const-string v3, "dtstart"

    iget-object v4, p1, Lcom/madsdk/CalendarEvent;->start:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :try_start_1
    const-string v3, "dtend"

    iget-object v4, p1, Lcom/madsdk/CalendarEvent;->end:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    const-string v2, "title"

    iget-object v3, p1, Lcom/madsdk/CalendarEvent;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v2, "description"

    iget-object v3, p1, Lcom/madsdk/CalendarEvent;->description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v2, "eventLocation"

    iget-object v3, p1, Lcom/madsdk/CalendarEvent;->location:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 339
    const-string v3, "eventTimezone"

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v2, "calendar_id"

    iget-object v3, p1, Lcom/madsdk/CalendarEvent;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v2, "eventStatus"

    iget-object v3, p1, Lcom/madsdk/CalendarEvent;->status:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v2}, Lcom/madsdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_CALENDAR"

    invoke-static {v2, v3}, Landroid/support/v4/app/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$100(Lcom/madsdk/AdView;)Lcom/madsdk/AdWebView;

    move-result-object v0

    const-string v1, "javascript: mraid.fireEvent(\'error\', \'Write calendar permission is not granted\', \'createCalendarEvent\');"

    invoke-virtual {v0, v1}, Lcom/madsdk/AdWebView;->loadUrl(Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/madsdk/AdView$3$5;

    invoke-direct {v1, p0, p1}, Lcom/madsdk/AdView$3$5;-><init>(Lcom/madsdk/AdView$3;Lcom/madsdk/CalendarEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 326
    :catch_1
    move-exception v0

    .line 327
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/madsdk/AdView$3$6;

    invoke-direct {v1, p0, p1}, Lcom/madsdk/AdView$3$6;-><init>(Lcom/madsdk/AdView$3;Lcom/madsdk/CalendarEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 347
    :cond_0
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 348
    if-nez v0, :cond_1

    .line 349
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/madsdk/AdView$3$7;

    invoke-direct {v1, p0}, Lcom/madsdk/AdView$3$7;-><init>(Lcom/madsdk/AdView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v0}, Lcom/madsdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/madsdk/R$string;->calendar_event_is_added:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public expand()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$800(Lcom/madsdk/AdView;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "expanded"

    invoke-virtual {p0}, Lcom/madsdk/AdView$3;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/madsdk/AdView$3$2;

    invoke-direct {v1, p0}, Lcom/madsdk/AdView$3$2;-><init>(Lcom/madsdk/AdView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    :cond_0
    return-void
.end method

.method public getCurrentPosition()Lcom/madsdk/javascript/PositionProperties;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lcom/madsdk/javascript/PositionProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/PositionProperties;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v1}, Lcom/madsdk/AdView;->getX()F

    move-result v1

    invoke-static {v1}, Lcom/madsdk/AdView;->pxToDp(F)I

    move-result v1

    iput v1, v0, Lcom/madsdk/javascript/PositionProperties;->x:I

    .line 187
    iget-object v1, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v1}, Lcom/madsdk/AdView;->getY()F

    move-result v1

    invoke-static {v1}, Lcom/madsdk/AdView;->pxToDp(F)I

    move-result v1

    iput v1, v0, Lcom/madsdk/javascript/PositionProperties;->y:I

    .line 188
    iget-object v1, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v1}, Lcom/madsdk/AdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/madsdk/AdView;->pxToDp(F)I

    move-result v1

    iput v1, v0, Lcom/madsdk/javascript/PositionProperties;->width:I

    .line 189
    iget-object v1, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v1}, Lcom/madsdk/AdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/madsdk/AdView;->pxToDp(F)I

    move-result v1

    iput v1, v0, Lcom/madsdk/javascript/PositionProperties;->height:I

    .line 191
    return-object v0
.end method

.method public getDefaultPosition()Lcom/madsdk/javascript/PositionProperties;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lcom/madsdk/javascript/PositionProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/PositionProperties;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v1}, Lcom/madsdk/AdView;->access$1200(Lcom/madsdk/AdView;)F

    move-result v1

    invoke-static {v1}, Lcom/madsdk/AdView;->pxToDp(F)I

    move-result v1

    iput v1, v0, Lcom/madsdk/javascript/PositionProperties;->x:I

    .line 198
    iget-object v1, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v1}, Lcom/madsdk/AdView;->access$1300(Lcom/madsdk/AdView;)F

    move-result v1

    invoke-static {v1}, Lcom/madsdk/AdView;->pxToDp(F)I

    move-result v1

    iput v1, v0, Lcom/madsdk/javascript/PositionProperties;->y:I

    .line 199
    iget-object v1, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v1}, Lcom/madsdk/AdView;->access$1400(Lcom/madsdk/AdView;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/madsdk/AdView;->pxToDp(F)I

    move-result v1

    iput v1, v0, Lcom/madsdk/javascript/PositionProperties;->width:I

    .line 200
    iget-object v1, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v1}, Lcom/madsdk/AdView;->access$1500(Lcom/madsdk/AdView;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/madsdk/AdView;->pxToDp(F)I

    move-result v1

    iput v1, v0, Lcom/madsdk/javascript/PositionProperties;->height:I

    .line 202
    return-object v0
.end method

.method public getExpandProperties()Lcom/madsdk/javascript/ExpandProperties;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$600(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ExpandProperties;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()Lcom/madsdk/javascript/SizeProperties;
    .locals 4

    .prologue
    .line 212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 213
    new-instance v1, Lcom/madsdk/javascript/SizeProperties;

    invoke-direct {v1}, Lcom/madsdk/javascript/SizeProperties;-><init>()V

    .line 214
    iget-object v2, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v2, v0}, Lcom/madsdk/AdView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 216
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Lcom/madsdk/AdView;->pxToDp(F)I

    move-result v2

    iput v2, v1, Lcom/madsdk/javascript/SizeProperties;->height:I

    .line 217
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/madsdk/AdView;->pxToDp(F)I

    move-result v0

    iput v0, v1, Lcom/madsdk/javascript/SizeProperties;->width:I

    .line 218
    return-object v1
.end method

.method public getOrientationProperties()Lcom/madsdk/javascript/OrientationProperties;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    iget-object v0, v0, Lcom/madsdk/AdView;->orientationProperties:Lcom/madsdk/javascript/OrientationProperties;

    return-object v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$800(Lcom/madsdk/AdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "interstitial"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "inline"

    goto :goto_0
.end method

.method public getResizeProperties()Lcom/madsdk/javascript/ResizeProperties;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$1700(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ResizeProperties;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSize()Lcom/madsdk/javascript/SizeProperties;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$1600(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/SizeProperties;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$000(Lcom/madsdk/AdView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isViewable()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$1100(Lcom/madsdk/AdView;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$400(Lcom/madsdk/AdView;)Z

    move-result v0

    iget-object v1, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v1}, Lcom/madsdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/madsdk/Utils;->openBrowser(ZLjava/lang/String;Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 303
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 304
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    iget-object v1, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v1}, Lcom/madsdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method public resize()V
    .locals 2

    .prologue
    .line 248
    const-string v0, "expanded"

    iget-object v1, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v1}, Lcom/madsdk/AdView;->access$000(Lcom/madsdk/AdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/madsdk/AdView$3$3;

    invoke-direct {v1, p0}, Lcom/madsdk/AdView$3$3;-><init>(Lcom/madsdk/AdView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    :goto_0
    return-void

    .line 256
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/madsdk/AdView$3$4;

    invoke-direct {v1, p0}, Lcom/madsdk/AdView$3$4;-><init>(Lcom/madsdk/AdView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setExpandProperties(Lcom/madsdk/javascript/ExpandProperties;)V
    .locals 2

    .prologue
    .line 168
    iget-boolean v0, p1, Lcom/madsdk/javascript/ExpandProperties;->useCustomClose:Z

    invoke-virtual {p0, v0}, Lcom/madsdk/AdView$3;->useCustomClose(Z)V

    .line 169
    iget v0, p1, Lcom/madsdk/javascript/ExpandProperties;->height:I

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$600(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ExpandProperties;

    move-result-object v0

    iget v1, p1, Lcom/madsdk/javascript/ExpandProperties;->height:I

    iput v1, v0, Lcom/madsdk/javascript/ExpandProperties;->height:I

    .line 172
    :cond_0
    iget v0, p1, Lcom/madsdk/javascript/ExpandProperties;->width:I

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$600(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ExpandProperties;

    move-result-object v0

    iget v1, p1, Lcom/madsdk/javascript/ExpandProperties;->width:I

    iput v1, v0, Lcom/madsdk/javascript/ExpandProperties;->width:I

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$600(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ExpandProperties;

    move-result-object v0

    iget-boolean v1, p1, Lcom/madsdk/javascript/ExpandProperties;->useCustomClose:Z

    iput-boolean v1, v0, Lcom/madsdk/javascript/ExpandProperties;->useCustomClose:Z

    .line 176
    return-void
.end method

.method public setOrientationProperties(Lcom/madsdk/javascript/OrientationProperties;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    iput-object p1, v0, Lcom/madsdk/AdView;->orientationProperties:Lcom/madsdk/javascript/OrientationProperties;

    .line 181
    return-void
.end method

.method public setResizeProperties(Lcom/madsdk/javascript/ResizeProperties;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0, p1}, Lcom/madsdk/AdView;->access$1702(Lcom/madsdk/AdView;Lcom/madsdk/javascript/ResizeProperties;)Lcom/madsdk/javascript/ResizeProperties;

    .line 244
    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 287
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 289
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    const-string v0, "image"

    .line 293
    :cond_0
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 294
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 295
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 296
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v0}, Lcom/madsdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "download"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 297
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 298
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v0}, Lcom/madsdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/madsdk/R$string;->image_is_downloading_message:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 299
    return-void
.end method

.method public useCustomClose(Z)V
    .locals 1

    .prologue
    .line 121
    if-nez p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$500(Lcom/madsdk/AdView;)Lcom/madsdk/FullscreenAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$500(Lcom/madsdk/AdView;)Lcom/madsdk/FullscreenAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/madsdk/FullscreenAd;->showButton()V

    .line 130
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$600(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ExpandProperties;

    move-result-object v0

    iput-boolean p1, v0, Lcom/madsdk/javascript/ExpandProperties;->useCustomClose:Z

    .line 131
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$500(Lcom/madsdk/AdView;)Lcom/madsdk/FullscreenAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$500(Lcom/madsdk/AdView;)Lcom/madsdk/FullscreenAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/madsdk/FullscreenAd;->hideButton()V

    goto :goto_0
.end method
