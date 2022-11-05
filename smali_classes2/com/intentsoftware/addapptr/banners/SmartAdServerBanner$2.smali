.class Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;
.super Ljava/lang/Object;
.source "SmartAdServerBanner.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/SASAdView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->createStateChangeListener()Lcom/smartadserver/android/library/ui/SASAdView$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/smartadserver/android/library/ui/SASAdView$i;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-virtual {p1}, Lcom/smartadserver/android/library/ui/SASAdView$i;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$000(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$002(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;Z)Z

    .line 143
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$300(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$000(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$002(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;Z)Z

    .line 149
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$400(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V

    goto :goto_0

    .line 153
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$100(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xdac

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$002(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;Z)Z

    .line 155
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$500(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V

    .line 156
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$102(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;J)J

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
