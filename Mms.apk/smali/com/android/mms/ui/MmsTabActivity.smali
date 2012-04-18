.class public Lcom/android/mms/ui/MmsTabActivity;
.super Landroid/app/Activity;
.source "MmsTabActivity.java"


# static fields
.field private static final cu:Lcom/android/mms/ui/MmsTabActivity$TabState;


# instance fields
.field private ck:Lcom/android/mms/ui/dj;

.field private cl:Landroid/support/v4/view/ViewPager;

.field private cm:Lcom/android/mms/ui/L;

.field private cn:Lcom/android/mms/ui/cF;

.field private co:Z

.field private cp:Landroid/widget/SearchView;

.field private cq:Lcom/android/mms/ui/bw;

.field private cr:Lcom/android/mms/ui/ek;

.field private cs:Lcom/android/mms/ui/cn;

.field private ct:Lcom/android/mms/ui/SearchFragment;

.field private cv:Lcom/android/mms/ui/MmsTabActivity$TabState;

.field cw:Landroid/widget/SearchView$OnQueryTextListener;

.field private i:Landroid/app/ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rH:Lcom/android/mms/ui/MmsTabActivity$TabState;

    sput-object v0, Lcom/android/mms/ui/MmsTabActivity;->cu:Lcom/android/mms/ui/MmsTabActivity$TabState;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Lcom/android/mms/ui/dj;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/dj;-><init>(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/dC;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ck:Lcom/android/mms/ui/dj;

    .line 38
    new-instance v0, Lcom/android/mms/ui/cF;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/cF;-><init>(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/dC;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cn:Lcom/android/mms/ui/cF;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Z

    .line 49
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity;->cu:Lcom/android/mms/ui/MmsTabActivity$TabState;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cv:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 504
    new-instance v0, Lcom/android/mms/ui/dC;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/dC;-><init>(Lcom/android/mms/ui/MmsTabActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cw:Landroid/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method static synthetic a(Lcom/android/mms/ui/MmsTabActivity;I)Landroid/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTabActivity;->m(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/bw;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cq:Lcom/android/mms/ui/bw;

    return-object v0
.end method

.method private a(Lcom/android/mms/ui/MmsTabActivity$TabState;)V
    .locals 1
    .parameter

    .prologue
    .line 326
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rJ:Lcom/android/mms/ui/MmsTabActivity$TabState;

    if-ne p1, v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cv:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->m(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/cn;

    invoke-virtual {v0}, Lcom/android/mms/ui/cn;->hh()V

    .line 329
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rH:Lcom/android/mms/ui/MmsTabActivity$TabState;

    if-eq p1, v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cq:Lcom/android/mms/ui/bw;

    invoke-virtual {v0}, Lcom/android/mms/ui/bw;->exitEditMode()V

    .line 332
    :cond_1
    return-void
.end method

.method private a(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 127
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 128
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->ck:Lcom/android/mms/ui/dj;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 129
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 130
    return-void
.end method

.method private a(Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 305
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cv:Lcom/android/mms/ui/MmsTabActivity$TabState;

    if-ne p1, v0, :cond_1

    .line 323
    :goto_0
    return-void

    .line 309
    :cond_1
    iput-object p1, p0, Lcom/android/mms/ui/MmsTabActivity;->cv:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 311
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cv:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 317
    :cond_2
    if-eqz p2, :cond_3

    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cl:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 320
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->invalidateOptionsMenu()V

    .line 322
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTabActivity;->a(Lcom/android/mms/ui/MmsTabActivity$TabState;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsTabActivity;->a(Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/mms/ui/MmsTabActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTabActivity;->l(Z)V

    return-void
.end method

.method private at()V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 107
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rH:Lcom/android/mms/ui/MmsTabActivity$TabState;

    const v1, 0x7f0a011a

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MmsTabActivity;->a(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V

    .line 108
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rI:Lcom/android/mms/ui/MmsTabActivity$TabState;

    const v1, 0x7f0a011b

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MmsTabActivity;->a(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V

    .line 109
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rJ:Lcom/android/mms/ui/MmsTabActivity$TabState;

    const v1, 0x7f0a011c

    #invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MmsTabActivity;->a(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V

    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 115
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v0, -0x1

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 116
    const v0, 0x7f1000c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cp:Landroid/widget/SearchView;

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cp:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cp:Landroid/widget/SearchView;

    const v3, 0x7f0a0103

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cp:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->cw:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 122
    return-void
.end method

.method private au()V
    .locals 5

    .prologue
    const v4, 0x7f100092

    .line 133
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 137
    const v0, 0x7f100093

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SearchFragment;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ct:Lcom/android/mms/ui/SearchFragment;

    .line 139
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cl:Landroid/support/v4/view/ViewPager;

    .line 140
    new-instance v0, Lcom/android/mms/ui/L;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/L;-><init>(Lcom/android/mms/ui/MmsTabActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cm:Lcom/android/mms/ui/L;

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cl:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->cm:Lcom/android/mms/ui/L;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/a;)V

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cl:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->cn:Lcom/android/mms/ui/cF;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/E;)V

    .line 150
    const-string v0, "ConversationFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/bw;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cq:Lcom/android/mms/ui/bw;

    .line 152
    const-string v0, "BookmarkFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ek;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cr:Lcom/android/mms/ui/ek;

    .line 154
    const-string v0, "FestivalFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/cn;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cs:Lcom/android/mms/ui/cn;

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cq:Lcom/android/mms/ui/bw;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/mms/ui/bw;

    invoke-direct {v0}, Lcom/android/mms/ui/bw;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cq:Lcom/android/mms/ui/bw;

    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cq:Lcom/android/mms/ui/bw;

    const-string v3, "ConversationFragment"

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cr:Lcom/android/mms/ui/ek;

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Lcom/android/mms/ui/ek;

    invoke-direct {v0}, Lcom/android/mms/ui/ek;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cr:Lcom/android/mms/ui/ek;

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cr:Lcom/android/mms/ui/ek;

    const-string v3, "BookmarkFragment"

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cs:Lcom/android/mms/ui/cn;

    if-nez v0, :cond_2

    .line 168
    new-instance v0, Lcom/android/mms/ui/cn;

    invoke-direct {v0}, Lcom/android/mms/ui/cn;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cs:Lcom/android/mms/ui/cn;

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cs:Lcom/android/mms/ui/cn;

    const-string v3, "FestivalFragment"

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cq:Lcom/android/mms/ui/bw;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cr:Lcom/android/mms/ui/ek;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cs:Lcom/android/mms/ui/cn;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ct:Lcom/android/mms/ui/SearchFragment;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 178
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 179
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 180
    return-void
.end method

.method private av()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 456
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Z

    if-eqz v0, :cond_1

    .line 457
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->ax()V

    .line 460
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cp:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 461
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 473
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->aw()V

    .line 474
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 467
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->cv:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cp:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    goto :goto_0
.end method

.method private aw()V
    .locals 5

    .prologue
    const/16 v1, 0x16

    .line 478
    .line 482
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v2, v0, 0x16

    .line 485
    const/4 v0, 0x0

    .line 486
    iget-boolean v3, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 491
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    iget-boolean v4, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Z

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 493
    if-eq v2, v0, :cond_1

    .line 495
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->i:Landroid/app/ActionBar;

    invoke-virtual {v2, v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 497
    :cond_1
    return-void
.end method

.method private ax()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cp:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 501
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cp:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 502
    return-void
.end method

.method static synthetic b(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/ek;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cr:Lcom/android/mms/ui/ek;

    return-object v0
.end method

.method static synthetic c(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/cn;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cs:Lcom/android/mms/ui/cn;

    return-object v0
.end method

.method static synthetic d(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/SearchFragment;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ct:Lcom/android/mms/ui/SearchFragment;

    return-object v0
.end method

.method private l(Z)V
    .locals 3
    .parameter

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Z

    if-eq v0, p1, :cond_0

    .line 441
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Z

    .line 442
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->av()V

    .line 443
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cp:Landroid/widget/SearchView;

    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Z

    if-eqz v0, :cond_2

    .line 447
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->ax()V

    .line 451
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cp:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method private m(I)Landroid/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 293
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rH:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cq:Lcom/android/mms/ui/bw;

    .line 298
    :goto_0
    return-object v0

    .line 295
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rI:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cr:Lcom/android/mms/ui/ek;

    goto :goto_0

    .line 297
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rJ:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cs:Lcom/android/mms/ui/cn;

    goto :goto_0

    .line 301
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Z

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->l(Z)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->setContentView(I)V

    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->at()V

    .line 77
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->au()V

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 386
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 420
    const/4 v0, 0x0

    .line 422
    :cond_0
    :goto_0
    return v0

    .line 388
    :sswitch_0
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 391
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsTabActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 395
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->onSearchRequested()Z

    goto :goto_0

    .line 399
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_FIREWALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 402
    :sswitch_4
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->cq:Lcom/android/mms/ui/bw;

    invoke-virtual {v1}, Lcom/android/mms/ui/bw;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->cq:Lcom/android/mms/ui/bw;

    invoke-virtual {v1}, Lcom/android/mms/ui/bw;->enterEditMode()V

    goto :goto_0

    .line 407
    :sswitch_5
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->cs:Lcom/android/mms/ui/cn;

    invoke-virtual {v1}, Lcom/android/mms/ui/cn;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->cs:Lcom/android/mms/ui/cn;

    invoke-virtual {v1}, Lcom/android/mms/ui/cn;->hi()V

    goto :goto_0

    .line 413
    :sswitch_6
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Z

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->onBackPressed()V

    goto :goto_0

    .line 386
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_6
        0x7f1000e2 -> :sswitch_4
        0x7f1000e4 -> :sswitch_1
        0x7f1000e5 -> :sswitch_2
        0x7f1000e6 -> :sswitch_0
        0x7f1000e7 -> :sswitch_3
        0x7f1000e8 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f1000e6

    const v5, 0x7f1000e5

    const v4, 0x7f1000e2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-static {p1, v6, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 344
    invoke-static {p1, v5, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 345
    const v0, 0x7f1000e7

    invoke-static {p1, v0, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 346
    invoke-static {p1, v4, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 347
    const v0, 0x7f1000e4

    invoke-static {p1, v0, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 348
    const v0, 0x7f1000e8

    invoke-static {p1, v0, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 377
    :goto_0
    return v3

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x309000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 354
    const v1, 0x7f1000e7

    invoke-static {p1, v1, v0}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 356
    const v0, 0x7f1000e4

    invoke-static {p1, v0, v3}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 357
    sget-object v0, Lcom/android/mms/ui/dI;->tB:[I

    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->cv:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 359
    :pswitch_0
    invoke-static {p1, v6, v3}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 360
    invoke-static {p1, v5, v3}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 361
    invoke-static {p1, v4, v3}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 362
    const v0, 0x7f1000e8

    invoke-static {p1, v0, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    goto :goto_0

    .line 365
    :pswitch_1
    const v0, 0x7f1000e8

    invoke-static {p1, v0, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 366
    invoke-static {p1, v6, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 367
    invoke-static {p1, v5, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 368
    invoke-static {p1, v4, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    goto :goto_0

    .line 371
    :pswitch_2
    const v0, 0x7f1000e8

    invoke-static {p1, v0, v3}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 372
    invoke-static {p1, v6, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 373
    invoke-static {p1, v5, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 374
    invoke-static {p1, v4, v2}, Lcom/android/mms/ui/ak;->a(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    invoke-static {}, Lcom/android/mms/ui/NewMessagePopupActivity;->dismiss()V

    .line 84
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 426
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->l(Z)V

    .line 427
    return v0
.end method
