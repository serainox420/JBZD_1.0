.class public Lcom/smaato/soma/internal/c/a;
.super Ljava/lang/Object;
.source "CalendarEventCreator.java"


# instance fields
.field a:Lcom/smaato/soma/internal/c/j;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/smaato/soma/internal/c/j;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "CalendarEventCreator"

    iput-object v0, p0, Lcom/smaato/soma/internal/c/a;->c:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/smaato/soma/internal/c/a$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/smaato/soma/internal/c/a$1;-><init>(Lcom/smaato/soma/internal/c/a;Lcom/smaato/soma/internal/c/j;Landroid/content/Context;)V

    .line 44
    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/a$1;->c()Ljava/lang/Object;

    .line 45
    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 49
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/smaato/soma/internal/c/a;->a:Lcom/smaato/soma/internal/c/j;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/c/j;->a()Ljava/lang/String;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 53
    const-string v2, "calendar_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/smaato/soma/internal/c/a;->a:Lcom/smaato/soma/internal/c/j;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/c/j;->b()Ljava/lang/String;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 57
    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/smaato/soma/internal/c/a;->a:Lcom/smaato/soma/internal/c/j;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/c/j;->c()Ljava/lang/String;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 61
    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/smaato/soma/internal/c/a;->a:Lcom/smaato/soma/internal/c/j;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/c/j;->d()Ljava/lang/String;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-lez v2, :cond_3

    .line 66
    :try_start_1
    const-string v2, "beginTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 66
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    :cond_3
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/smaato/soma/internal/c/a;->a:Lcom/smaato/soma/internal/c/j;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/c/j;->e()Ljava/lang/String;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-lez v2, :cond_4

    .line 78
    :try_start_3
    const-string v2, "endTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 78
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 87
    :cond_4
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/smaato/soma/internal/c/a;->a:Lcom/smaato/soma/internal/c/j;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/c/j;->f()Lorg/json/JSONObject;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_5

    .line 89
    iget-object v1, p0, Lcom/smaato/soma/internal/c/a;->a:Lcom/smaato/soma/internal/c/j;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/c/j;->g()Ljava/lang/String;

    move-result-object v1

    .line 90
    new-instance v2, Lcom/smaato/soma/debug/b;

    iget-object v3, p0, Lcom/smaato/soma/internal/c/a;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FREQ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    sget-object v6, Lcom/smaato/soma/debug/DebugCategory;->INFO:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v2}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 94
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 95
    const-string v2, "rrule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FREQ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/smaato/soma/internal/c/a;->a:Lcom/smaato/soma/internal/c/j;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/c/j;->h()Ljava/lang/String;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 100
    const-string v2, "eventLocation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    :cond_6
    iget-object v1, p0, Lcom/smaato/soma/internal/c/a;->a:Lcom/smaato/soma/internal/c/j;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/c/j;->i()Ljava/lang/String;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 104
    const-string v2, "eventStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    :cond_7
    iget-object v1, p0, Lcom/smaato/soma/internal/c/a;->a:Lcom/smaato/soma/internal/c/j;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/c/j;->j()Ljava/lang/String;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 108
    const-string v2, "exrule"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :cond_8
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/smaato/soma/internal/c/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    :goto_2
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    new-instance v1, Lcom/smaato/soma/debug/b;

    iget-object v2, p0, Lcom/smaato/soma/internal/c/a;->c:Ljava/lang/String;

    const-string v3, "Wrog Date Format !!"

    const/4 v4, 0x1

    sget-object v5, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/internal/c/a;->c:Ljava/lang/String;

    const-string v2, "Wrong JSON format !!"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->INFO:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_2

    .line 80
    :catch_2
    move-exception v1

    .line 81
    :try_start_5
    new-instance v1, Lcom/smaato/soma/debug/b;

    iget-object v2, p0, Lcom/smaato/soma/internal/c/a;->c:Ljava/lang/String;

    const-string v3, "Wrog Date Format !!"

    const/4 v4, 0x1

    sget-object v5, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/smaato/soma/internal/c/a;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/smaato/soma/internal/c/a;->a()V

    return-void
.end method
