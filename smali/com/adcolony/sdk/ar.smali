.class Lcom/adcolony/sdk/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Runnable;

.field d:I


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "AdColonyTest"

    iput-object v0, p0, Lcom/adcolony/sdk/ar;->a:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/adcolony/sdk/ar;->c:Ljava/lang/Runnable;

    .line 26
    iput-object p2, p0, Lcom/adcolony/sdk/ar;->b:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/adcolony/sdk/ar;->d:I

    .line 28
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adcolony/sdk/ar;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 36
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    const-string v0, "AdColonyTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/ar;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has completed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "AdColonyTest"

    const-string v1, "Passed: false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v0, "AdColonyTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v0, "AdColonyTest"

    const-string v1, "---------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->n:Lcom/adcolony/sdk/aq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aq;->a(Z)V

    .line 67
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 46
    const-string v0, "AdColonyTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/ar;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has completed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "AdColonyTest"

    const-string v1, "Passed: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "AdColonyTest"

    const-string v1, "---------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->n:Lcom/adcolony/sdk/aq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aq;->a(Z)V

    .line 51
    return-void
.end method
