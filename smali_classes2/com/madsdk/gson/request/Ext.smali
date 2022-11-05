.class public Lcom/madsdk/gson/request/Ext;
.super Ljava/lang/Object;
.source "Ext.java"


# instance fields
.field public _p:Ljava/lang/String;

.field public _ps:Ljava/lang/String;

.field public _s:Ljava/lang/String;

.field public dspf:Ljava/lang/String;

.field public is_qa_test:Ljava/lang/Boolean;

.field public placement_hash:Ljava/lang/String;

.field public publication:Ljava/lang/String;

.field public rt:Ljava/lang/String;

.field public sdk:Ljava/lang/String;

.field public test_mode:Ljava/lang/String;

.field public transcription:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/madsdk/gson/request/Ext;->rt:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/madsdk/gson/request/Ext;->publication:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/madsdk/gson/request/Ext;->test_mode:Ljava/lang/String;

    .line 24
    return-void
.end method
