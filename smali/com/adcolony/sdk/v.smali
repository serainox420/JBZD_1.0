.class Lcom/adcolony/sdk/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Date;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/adcolony/sdk/v;->a:Ljava/util/Date;

    .line 17
    iput p2, p0, Lcom/adcolony/sdk/v;->b:I

    .line 18
    iput-object p3, p0, Lcom/adcolony/sdk/v;->c:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/adcolony/sdk/v;->d:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/adcolony/sdk/v;->b:I

    packed-switch v0, :pswitch_data_0

    .line 39
    const-string v0, "UNKNOWN LOG LEVEL"

    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    const-string v0, "Assert"

    goto :goto_0

    .line 29
    :pswitch_1
    const-string v0, "Debug"

    goto :goto_0

    .line 31
    :pswitch_2
    const-string v0, "Error"

    goto :goto_0

    .line 33
    :pswitch_3
    const-string v0, "Info"

    goto :goto_0

    .line 35
    :pswitch_4
    const-string v0, "Warn"

    goto :goto_0

    .line 37
    :pswitch_5
    const-string v0, "Verbose"

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/adcolony/sdk/v;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adcolony/sdk/v;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adcolony/sdk/v;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/Date;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adcolony/sdk/v;->a:Ljava/util/Date;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adcolony/sdk/v;->e()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adcolony/sdk/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adcolony/sdk/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adcolony/sdk/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
