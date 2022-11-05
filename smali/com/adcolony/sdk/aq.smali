.class Lcom/adcolony/sdk/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/ar;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/adcolony/sdk/ar;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field volatile e:Z

.field f:Z

.field g:I

.field h:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "AdColonyTest"

    iput-object v0, p0, Lcom/adcolony/sdk/aq;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/aq;->f:Z

    .line 26
    iput v1, p0, Lcom/adcolony/sdk/aq;->g:I

    .line 27
    iput v1, p0, Lcom/adcolony/sdk/aq;->h:I

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/aq;->b:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/aq;->c:Ljava/util/LinkedList;

    .line 33
    return-void
.end method


# virtual methods
.method a(ILjava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/adcolony/sdk/ar;

    invoke-direct {v0, p2, p3, p1}, Lcom/adcolony/sdk/ar;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 95
    iget-object v1, p0, Lcom/adcolony/sdk/aq;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aq;->a(Lcom/adcolony/sdk/ar;)V

    .line 98
    return-void
.end method

.method a(Lcom/adcolony/sdk/ar;)V
    .locals 3

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/adcolony/sdk/aq;->f:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/adcolony/sdk/aq;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/aq;->f:Z

    .line 81
    const-string v0, "AdColonyTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting test for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/adcolony/sdk/ar;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p1}, Lcom/adcolony/sdk/ar;->a()V

    goto :goto_0
.end method

.method a(Z)V
    .locals 4

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 45
    iget v0, p0, Lcom/adcolony/sdk/aq;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adcolony/sdk/aq;->g:I

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/aq;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/adcolony/sdk/aq;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ar;

    .line 55
    const-string v1, "AdColonyTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting test for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/adcolony/sdk/ar;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v0}, Lcom/adcolony/sdk/ar;->a()V

    .line 65
    :goto_1
    return-void

    .line 49
    :cond_0
    iget v0, p0, Lcom/adcolony/sdk/aq;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adcolony/sdk/aq;->h:I

    goto :goto_0

    .line 60
    :cond_1
    const-string v0, "AdColonyTest"

    const-string v1, "TEST PASS COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, "AdColonyTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adcolony/sdk/aq;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "AdColonyTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adcolony/sdk/aq;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/aq;->f:Z

    goto :goto_1
.end method
