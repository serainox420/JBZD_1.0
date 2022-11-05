.class Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;
.super Ljava/lang/Object;
.source "RevMobFullscreen.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$adIdParts:[Ljava/lang/String;

.field final synthetic val$targetingInformation:Lcom/intentsoftware/addapptr/c/k;

.field final synthetic val$type:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;Landroid/app/Activity;[Ljava/lang/String;Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    iput-object p2, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;->val$adIdParts:[Ljava/lang/String;

    iput-object p4, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;->val$type:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    iput-object p5, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;->val$targetingInformation:Lcom/intentsoftware/addapptr/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailed(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    invoke-static {v0, p1}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onInitialized()V
    .locals 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;->val$adIdParts:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;->val$type:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    iget-object v4, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;->val$targetingInformation:Lcom/intentsoftware/addapptr/c/k;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;Lcom/intentsoftware/addapptr/c/k;)V

    .line 76
    return-void
.end method
