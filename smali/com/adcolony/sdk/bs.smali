.class Lcom/adcolony/sdk/bs;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field a:Lcom/adcolony/sdk/bn$a;

.field b:I

.field c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/bs;->a(I)Lcom/adcolony/sdk/bn$a;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bs;->a:Lcom/adcolony/sdk/bn$a;

    .line 17
    iput p1, p0, Lcom/adcolony/sdk/bs;->c:I

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/adcolony/sdk/bs;->a:Lcom/adcolony/sdk/bn$a;

    .line 11
    invoke-virtual {p1}, Lcom/adcolony/sdk/bn$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/bs;->c:I

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Lcom/adcolony/sdk/bn$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcom/adcolony/sdk/bs;->a:Lcom/adcolony/sdk/bn$a;

    .line 30
    invoke-virtual {p2}, Lcom/adcolony/sdk/bn$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/bs;->c:I

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bs;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/adcolony/sdk/bn$a;->b:Lcom/adcolony/sdk/bn$a;

    iput-object v0, p0, Lcom/adcolony/sdk/bs;->a:Lcom/adcolony/sdk/bn$a;

    .line 23
    iget-object v0, p0, Lcom/adcolony/sdk/bs;->a:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bn$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/bs;->c:I

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bs;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 25
    return-void
.end method

.method private a(I)Lcom/adcolony/sdk/bn$a;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    .line 48
    packed-switch p1, :pswitch_data_0

    .line 139
    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    sget-object v0, Lcom/adcolony/sdk/bn$a;->b:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 53
    :pswitch_1
    sget-object v0, Lcom/adcolony/sdk/bn$a;->c:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 56
    :pswitch_2
    sget-object v0, Lcom/adcolony/sdk/bn$a;->d:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 59
    :pswitch_3
    sget-object v0, Lcom/adcolony/sdk/bn$a;->e:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 62
    :pswitch_4
    sget-object v0, Lcom/adcolony/sdk/bn$a;->f:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 65
    :pswitch_5
    sget-object v0, Lcom/adcolony/sdk/bn$a;->g:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 68
    :pswitch_6
    sget-object v0, Lcom/adcolony/sdk/bn$a;->h:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 71
    :pswitch_7
    sget-object v0, Lcom/adcolony/sdk/bn$a;->i:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 74
    :pswitch_8
    sget-object v0, Lcom/adcolony/sdk/bn$a;->j:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 77
    :pswitch_9
    sget-object v0, Lcom/adcolony/sdk/bn$a;->k:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 80
    :pswitch_a
    sget-object v0, Lcom/adcolony/sdk/bn$a;->l:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 83
    :pswitch_b
    sget-object v0, Lcom/adcolony/sdk/bn$a;->m:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 86
    :pswitch_c
    sget-object v0, Lcom/adcolony/sdk/bn$a;->n:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 89
    :pswitch_d
    sget-object v0, Lcom/adcolony/sdk/bn$a;->o:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 92
    :pswitch_e
    sget-object v0, Lcom/adcolony/sdk/bn$a;->p:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 95
    :pswitch_f
    sget-object v0, Lcom/adcolony/sdk/bn$a;->q:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 98
    :pswitch_10
    sget-object v0, Lcom/adcolony/sdk/bn$a;->r:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 101
    :pswitch_11
    sget-object v0, Lcom/adcolony/sdk/bn$a;->s:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 104
    :pswitch_12
    sget-object v0, Lcom/adcolony/sdk/bn$a;->t:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 107
    :pswitch_13
    sget-object v0, Lcom/adcolony/sdk/bn$a;->u:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 110
    :pswitch_14
    sget-object v0, Lcom/adcolony/sdk/bn$a;->v:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 113
    :pswitch_15
    sget-object v0, Lcom/adcolony/sdk/bn$a;->w:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 116
    :pswitch_16
    sget-object v0, Lcom/adcolony/sdk/bn$a;->x:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 119
    :pswitch_17
    sget-object v0, Lcom/adcolony/sdk/bn$a;->y:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 122
    :pswitch_18
    sget-object v0, Lcom/adcolony/sdk/bn$a;->z:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 125
    :pswitch_19
    sget-object v0, Lcom/adcolony/sdk/bn$a;->A:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 128
    :pswitch_1a
    sget-object v0, Lcom/adcolony/sdk/bn$a;->B:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 131
    :pswitch_1b
    sget-object v0, Lcom/adcolony/sdk/bn$a;->D:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 134
    :pswitch_1c
    sget-object v0, Lcom/adcolony/sdk/bn$a;->C:Lcom/adcolony/sdk/bn$a;

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YvolverException: Error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adcolony/sdk/bs;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bs;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
