.class Lcom/apprupt/sdk/Logger$Basic;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/apprupt/sdk/Logger$log;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Basic"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/apprupt/sdk/Logger$Basic;->b:I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CV_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/Logger$Basic;->a:Ljava/lang/String;

    .line 97
    return-void

    .line 96
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/apprupt/sdk/Logger$1;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/Logger$Basic;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 100
    iget v0, p0, Lcom/apprupt/sdk/Logger$Basic;->b:I

    .line 101
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 102
    invoke-static {}, Lcom/apprupt/sdk/Logger;->c()I

    move-result v0

    .line 104
    :cond_0
    if-lez v0, :cond_4

    and-int/2addr v0, p1

    if-lez v0, :cond_4

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p2, v0

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_2
    if-eqz p3, :cond_3

    .line 111
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v0, "Exception: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 131
    iget-object v0, p0, Lcom/apprupt/sdk/Logger$Basic;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_4
    :goto_1
    return-void

    .line 121
    :sswitch_0
    iget-object v0, p0, Lcom/apprupt/sdk/Logger$Basic;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    :sswitch_1
    iget-object v0, p0, Lcom/apprupt/sdk/Logger$Basic;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    :sswitch_2
    iget-object v0, p0, Lcom/apprupt/sdk/Logger$Basic;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public varargs a(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/apprupt/sdk/Logger$Basic;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 140
    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/apprupt/sdk/Logger$Basic;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 145
    return-void
.end method

.method public varargs b(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x4

    invoke-direct {p0, v0, p2, p1}, Lcom/apprupt/sdk/Logger$Basic;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 160
    return-void
.end method

.method public varargs b([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/apprupt/sdk/Logger$Basic;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 155
    return-void
.end method

.method public varargs c(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x8

    invoke-direct {p0, v0, p2, p1}, Lcom/apprupt/sdk/Logger$Basic;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 170
    return-void
.end method

.method public varargs c([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/apprupt/sdk/Logger$Basic;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 165
    return-void
.end method

.method public varargs d([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 174
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/apprupt/sdk/Logger$Basic;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 175
    return-void
.end method
