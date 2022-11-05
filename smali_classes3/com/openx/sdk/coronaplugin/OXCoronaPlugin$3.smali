.class Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;
.super Ljava/lang/Object;
.source "OXCoronaPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->createBanner(ILjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

.field final synthetic val$adChangeInterval:I

.field final synthetic val$auid:Ljava/lang/String;

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    iput p2, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->val$location:I

    iput-object p3, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->val$domain:Ljava/lang/String;

    iput-object p4, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->val$auid:Ljava/lang/String;

    iput p5, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->val$adChangeInterval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 131
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$400(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    if-nez v0, :cond_2

    .line 133
    const-string v0, "OXCoronaPlugin :createBanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->val$location:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    new-instance v1, Lcom/openx/view/AdBanner;

    invoke-static {}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$500()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->val$domain:Ljava/lang/String;

    iget-object v4, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->val$auid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/openx/view/AdBanner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$402(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Lcom/openx/view/AdBanner;)Lcom/openx/view/AdBanner;

    .line 136
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$400(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$600(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBanner;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 137
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$400(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    iget v1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->val$adChangeInterval:I

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBanner;->setAutoRefreshInterval(I)V

    .line 139
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$702(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    .line 141
    iget v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->val$location:I

    invoke-static {}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$800()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 142
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$700(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0x31

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 145
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$1000(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    new-instance v1, Lcom/openx/core/network/OXAdRequest;

    invoke-direct {v1}, Lcom/openx/core/network/OXAdRequest;-><init>()V

    invoke-static {v0, v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$1102(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Lcom/openx/core/network/OXAdRequest;)Lcom/openx/core/network/OXAdRequest;

    .line 149
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$1100(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/core/network/OXAdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$1000(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/core/network/OXAdRequest;->setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$400(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBanner;->setVisibility(I)V

    .line 153
    invoke-static {}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$500()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$400(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v2}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$700(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$400(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/AdBanner;->requestLayout()V

    .line 156
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$1002(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Lcom/openx/model/adParams/AdCallParameters;)Lcom/openx/model/adParams/AdCallParameters;

    .line 159
    :cond_2
    return-void

    .line 143
    :cond_3
    iget v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->val$location:I

    invoke-static {}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$900()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;->this$0:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-static {v0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->access$700(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method
