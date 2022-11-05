.class public Lcom/madsdk/gson/request/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field public length:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/madsdk/gson/request/Data;->type:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/madsdk/gson/request/Data;->length:Ljava/lang/String;

    .line 12
    return-void
.end method
