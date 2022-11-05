.class public Lcom/madsdk/CalendarEvent;
.super Ljava/lang/Object;
.source "CalendarEvent.java"


# instance fields
.field description:Ljava/lang/String;

.field end:Ljava/lang/String;

.field id:Ljava/lang/String;

.field location:Ljava/lang/String;

.field recurrence:Ljava/lang/String;

.field reminder:Ljava/lang/String;

.field start:Ljava/lang/String;

.field status:Ljava/lang/String;

.field summary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "1"

    iput-object v0, p0, Lcom/madsdk/CalendarEvent;->id:Ljava/lang/String;

    return-void
.end method
