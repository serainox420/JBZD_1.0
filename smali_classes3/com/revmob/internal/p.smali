.class public final Lcom/revmob/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/revmob/internal/a;


# instance fields
.field private a:Lcom/revmob/internal/b;

.field private b:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/revmob/internal/p;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/revmob/internal/p;->b:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private c(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/revmob/internal/b;

    invoke-direct {v1, p1, p2, v0, p0}, Lcom/revmob/internal/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/a;)V

    iput-object v1, p0, Lcom/revmob/internal/p;->a:Lcom/revmob/internal/b;

    iget-object v0, p0, Lcom/revmob/internal/p;->a:Lcom/revmob/internal/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/internal/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/revmob/internal/p;->a:Lcom/revmob/internal/b;

    invoke-virtual {v0}, Lcom/revmob/internal/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/revmob/internal/p;->b:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/revmob/internal/p;->a:Lcom/revmob/internal/b;

    invoke-virtual {v0}, Lcom/revmob/internal/b;->a()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/internal/p;->b:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/revmob/internal/q;

    invoke-direct {v2, p0}, Lcom/revmob/internal/q;-><init>(Lcom/revmob/internal/p;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/revmob/internal/p;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Lcom/revmob/internal/p;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/revmob/internal/p;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->b:Lcom/revmob/internal/w;

    const-string v2, "onTaskComplete"

    invoke-static {v0, v3, v1, v3, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/revmob/internal/p;->c(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/revmob/internal/p;->c(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
