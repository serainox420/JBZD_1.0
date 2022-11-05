.class Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;
.super Ljava/lang/Object;
.source "OXUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/unityplugin/OXUnityPlugin;->createBanner(ILjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

.field final synthetic val$adChangeInterval:I

.field final synthetic val$auid:Ljava/lang/String;

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    iput p2, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->val$location:I

    iput-object p3, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->val$domain:Ljava/lang/String;

    iput-object p4, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->val$auid:Ljava/lang/String;

    iput p5, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->val$adChangeInterval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$300(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    if-nez v0, :cond_2

    .line 138
    const-string v0, "OXUnityPlugin :createBanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->val$location:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    new-instance v1, Lcom/openx/view/AdBanner;

    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$400()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->val$domain:Ljava/lang/String;

    iget-object v4, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->val$auid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/openx/view/AdBanner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$302(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Lcom/openx/view/AdBanner;)Lcom/openx/view/AdBanner;

    .line 141
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$300(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$500(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBanner;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 142
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$300(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    iget v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->val$adChangeInterval:I

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBanner;->setAutoRefreshInterval(I)V

    .line 144
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$602(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    .line 146
    iget v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->val$location:I

    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$700()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 147
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$600(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0x31

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$900(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    new-instance v1, Lcom/openx/core/network/OXAdRequest;

    invoke-direct {v1}, Lcom/openx/core/network/OXAdRequest;-><init>()V

    invoke-static {v0, v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$1002(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Lcom/openx/core/network/OXAdRequest;)Lcom/openx/core/network/OXAdRequest;

    .line 154
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$1000(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/core/network/OXAdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$900(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/core/network/OXAdRequest;->setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$300(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBanner;->setVisibility(I)V

    .line 158
    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$400()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$300(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v2}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$600(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$300(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/AdBanner;->requestLayout()V

    .line 161
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$902(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Lcom/openx/model/adParams/AdCallParameters;)Lcom/openx/model/adParams/AdCallParameters;

    .line 164
    :cond_2
    return-void

    .line 148
    :cond_3
    iget v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->val$location:I

    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$800()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;->this$0:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-static {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->access$600(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method
