.class final Lcom/revmob/internal/h;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/internal/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/revmob/internal/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/revmob/internal/c;

    invoke-direct {v0}, Lcom/revmob/internal/c;-><init>()V

    iget-object v1, p0, Lcom/revmob/internal/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/revmob/internal/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/revmob/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    return-void
.end method
