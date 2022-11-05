.class public Lcom/madsdk/gson/request/Imp;
.super Ljava/lang/Object;
.source "Imp.java"


# instance fields
.field public bidfloor:Ljava/lang/Float;

.field public id:Ljava/lang/String;

.field public nativeInfo:Lcom/madsdk/gson/request/NativeInfo;
    .annotation runtime Lcom/google/gson/a/c;
        a = "native"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;Lcom/madsdk/gson/request/NativeInfo;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/madsdk/gson/request/Imp;->id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/madsdk/gson/request/Imp;->bidfloor:Ljava/lang/Float;

    .line 17
    iput-object p3, p0, Lcom/madsdk/gson/request/Imp;->nativeInfo:Lcom/madsdk/gson/request/NativeInfo;

    .line 18
    return-void
.end method
