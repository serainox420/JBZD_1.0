.class Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$1;
.super Ljava/lang/Object;
.source "NexageFullscreen.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHtmlDownloaded(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 85
    const-string v0, "<body>.{0,5}</body>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    const-string v1, "response too short."

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><head><style>body {width: 100%; height: 100%; padding:0; margin:0; display: table; background-color: black} center {display: table-cell; vertical-align: middle;} img {max-width:100%; max-height:100%; width:auto; position: absolute; margin: auto; top: 0; left: 0; right: 0; bottom: 0;}</style></head><body marginwidth=0 marginheight=0><center>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</center></body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->access$202(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)V

    goto :goto_0
.end method

.method public onHtmlDownloadingError()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    const-string v1, "error downloading HTML."

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;Ljava/lang/String;)V

    .line 80
    return-void
.end method
